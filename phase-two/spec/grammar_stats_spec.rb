require 'grammar_stats'

RSpec.describe GrammarStats do
  it "returns the text that is given" do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("Hello there!")).to eq "Hello there!"
  end
end
