class CollaboratorOne

  def perform
    puts "CollaboratorOne instance: perform"
    collaborator_two = CollaboratorTwo.new
    collaborator_two.assist
  end

end
