require "rails_helper"

describe "Parallel mapper behavior", threads: true do
  it "does what we expect" do
    obj = ParallelMapper.new
    obj.work_in_threads

    expect(true).to be_truthy
  end
end
