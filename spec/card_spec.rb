require "trello"

describe Card do
  let(:attrs) do
    { id: "56cb138e3a562949649521b5",
      short_id: 52,
      name: "Control Flow and Variables",
      desc:                  "* Class Logistics\n",
      due: nil,
      closed: false,
      url: "https://trello.com/c/vB5D4EbY/52-control-flow-and-variables",
      short_url: "https://trello.com/c/vB5D4EbY",
      board_id: "568c5adfc88fe9b048990244",
      member_ids: [],
      list_id: "568d13888b8ffc4b5ad1634a",
      pos: 32_767.75,
      last_activity_date: Time.new("2016-02-23 15:48:01 UTC"),
      card_labels:                  [{ "id" => "56cc7f31152c3f92fd2492f8",
                                       "idBoard" => "568c5adfc88fe9b048990244",
                                       "name" => "Lesson",
                                       "color" => "blue",
                                       "uses" => 4 }],
      cover_image_id: nil,
      badges:                  { "votes" => 0,
                                 "viewingMemberVoted" => false,
                                 "subscribed" => false,
                                 "fogbugz" => "",
                                 "checkItems" => 15,
                                 "checkItemsChecked" => 0,
                                 "comments" => 0,
                                 "attachments" => 0,
                                 "description" => true,
                                 "due" => nil },
      card_members: nil }.stringify_keys
  end

  subject(:subject) { described_class.new(Trello::Card.new(attributes: attrs)) }

  it "can be initialized" do
    expect(subject).to be_a(Card)
  end

  it "has a name" do
    pending
    expect(subject.name).to eq ""
  end
end
