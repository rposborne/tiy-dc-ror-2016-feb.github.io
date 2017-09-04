require "pry"
require "trello"
require "fileutils"
require "net/http"
require "open-uri"
require "active_support/inflector"
require_relative "../lib/card_builder"
require_relative "../lib/structured_to_md"


Trello.configure do |config|
  config.developer_public_key = ENV["TRELLO_DEVELOPER_PUBLIC_KEY"] # The "key" from step 1
  config.member_token = ENV["TRELLO_MEMBER_TOKEN"] # The token from step 3.
end

board = Trello::Board.find("568c5adfc88fe9b048990244")

board.lists.each_with_index do |list, list_i|
  list_folder = "course/#{list_i + 1}_#{list.name.trelloize}"

  FileUtils.mkdir_p list_folder

  list.cards.each_with_index do |card, card_i|
    card = CardBuilder.build(card)

    @md = StructuredToMarkdown.new
    @md << card.desc.to_s
    @md.add_front_matter(card.data)

    # Extract Checklists
    card.checklists.each do |checklist|
      @md.add_header(name: checklist.name, level: 3) unless checklist.name == "Checklist"
      @md << checklist.description.to_s
      checklist.items.each do |item|
        @md.add_checklist(name: item.name, complete: item.complete?)
      end
    end

    if card.attachments.length > 0
      card_folder = File.join(list_folder, "#{card_i + 1}_#{card.name}")
      FileUtils.mkdir_p card_folder

      # Extract Attachments
      card.attachments.each do |attachment|
        @md.add_link(name: attachment.name, url: attachment.url)
        Card.download_file(name: attachment.name, url: attachment.url, path: card_folder)
      end

      File.write(File.join(card_folder, "meta.json"), JSON.pretty_generate(card.data))
      File.write(File.join(card_folder, "readme.md"), @md.body)
    else
      File.write(File.join(list_folder, "#{card_i + 1}_#{card.name}.md"), @md.body)
    end
  end

  File.write("#{list_folder}/meta.json", { title: list.name, description: list.name }.to_json)
end
