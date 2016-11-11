class CollaboratorTwo
  def initialize(item)
    @item = item
  end

  attr_reader :item

  def assist
    puts "CollaboratorTwo instance: assist #{item}"
  end

end
