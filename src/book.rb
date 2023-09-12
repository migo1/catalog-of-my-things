require_relative 'items'

class Book < Items
  attr_accessor :publisher, :cover_letter

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || (@cover_state == 'bad')
  end
end