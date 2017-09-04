class Card < SimpleDelegator
  attr_reader :card
  def initialize(card)
    @card = card
    @delegate_sd_obj = card
  end

  def name
    card.name.trelloize
  end

  def type
    self.class.to_s.downcase
  end

  def labels
    card.labels.collect(&:name)
  end

  def data
    {
      type: type,
      title: card.name,
      description: card.desc.lines.first.to_s.chomp,
      order_index: card.pos,
      tags: labels
    }
  end
  def to_json
    data.to_json
  end

  class << self
    def download_file(name:, url:, path:)
      File.open(File.join(path, name), "wb") do |file|
        open(url, "rb") do |web_file|
          file.write(web_file.read)
        end
      end
    end
  end
end
