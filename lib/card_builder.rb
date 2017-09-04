require_relative "cards/card"
require_relative "cards/assignment"
require_relative "cards/challenge"
require_relative "cards/lesson"
require_relative "./monkey_patches"
require "active_support/inflector"

# Extract structured data from trello into prototype format for TIYO
class CardBuilder
  DEFAULT_TYPE = "Lesson".freeze
  ACCEPTED_TYPES = %w(Challenge Lesson Assignment).freeze
  attr_reader :card
  def initialize(card)
    @card = card
  end

  def type
    ((ACCEPTED_TYPES & card.labels.map(&:name)).first || DEFAULT_TYPE).downcase
  end

  class << self
    def build(card)
      card_type = new(card).type
      card_type.classify.constantize.new(card)
    end
  end
end
