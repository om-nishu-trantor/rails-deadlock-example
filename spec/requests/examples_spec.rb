require "rails_helper"

describe "request where the controller creates threads", threads: true do
  it "does what we expect" do
    get examples_url
    expect(response.code).to eq("200")
  end
end
