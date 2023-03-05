require 'counter'

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "reports a count of all added values" do
    counter = Counter.new
    counter.add(5)
    counter.add(4)
    counter.add(6)
    expect(counter.report).to eq "Counted to 15 so far."
  end

  it "counts to a given number" do
    counter = Counter.new
    counter.add(6)
    expect(counter.report).to eq "Counted to 6 so far."
  end
end