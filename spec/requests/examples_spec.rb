require "rails_helper"

describe "Parallel mapper behavior", threads: true do
  it "does what we expect" do

    get examples_url

    expect(response.code).to eq("200")
  end
end
