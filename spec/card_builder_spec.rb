describe CardBuilder do
  let(:label) { double(:label, name: "Challenge") }
  let(:card) { double(:card, labels: [label]) }
  it "returns a new object of the challenge type" do
    expect(described_class.build(card)).to be_a(Challenge)
  end
end
