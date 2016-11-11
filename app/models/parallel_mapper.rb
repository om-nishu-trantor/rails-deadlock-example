class ParallelMapper

  def work_in_threads
    data = [1, 2, 3]
    Parallel.map(data, in_threads: 3) do |items|
      ActiveRecord::Base.connection_pool.with_connection do |conn|
        collaborator_one = CollaboratorOne.new
        collaborator_one.perform
      end
    end
  end

end
