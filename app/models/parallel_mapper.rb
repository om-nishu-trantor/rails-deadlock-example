# uncommenting will make things work
#require_relative './collaborator_one.rb'
#require_relative './collaborator_two.rb'

class ParallelMapper
  def work_in_threads
    data = [1, 2, 3]
    Parallel.map(data, in_threads: 3) do |item|
      ActiveRecord::Base.connection_pool.with_connection do |conn|
        puts "ParallelMapper instance: work_in_threads: #{item}"
        collaborator_one = CollaboratorOne.new(item)
        collaborator_one.perform
      end
    end
  end
end
