class CollaboratorOne
  def initialize(item)
    @item = item
  end

  attr_reader :item

  def perform
    puts "CollaboratorOne instance: perform #{item}"
    collaborator_two = CollaboratorTwo.new(item)
    collaborator_two.assist
  end

end
