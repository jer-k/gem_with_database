require "spec_helper"

RSpec.describe GemWithDatabase do
  it "has a version number" do
    expect(GemWithDatabase::VERSION).not_to be nil
  end
end
