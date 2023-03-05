require 'string_builder'

RSpec.describe StringBuilder do
  it "initially returns an empty string as output" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end

  it "initially returns a size of 0" do
    string_builder = StringBuilder.new
    expect(string_builder.size).to eq 0
  end

  context "given one addition of a string" do
    it "outputs that string" do
      string_builder = StringBuilder.new
      string_builder.add("Hello")
      expect(string_builder.output).to eq "Hello"
    end

    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add("Hello")
      expect(string_builder.size).to eq 5
    end
  end

  context "given many addition of a string" do
    it "outputs that string" do
      string_builder = StringBuilder.new
      string_builder.add("Hello")
      string_builder.add(", ")
      string_builder.add("world!")
      expect(string_builder.output).to eq "Hello, world!"
    end

    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add("Hello")
      string_builder.add(", ")
      string_builder.add("world!")
      expect(string_builder.size).to eq 13
    end
  end

# Not good to have two expectations as you're testing to different behaviours
  # it "creates a string for a user" do
  #   string_builder = StringBuilder.new
  #   string_builder.add("Hello")
  #   expect(string_builder.size).to eq 5
  #   expect(string_builder.output).to eq "Hello"
  # end
end