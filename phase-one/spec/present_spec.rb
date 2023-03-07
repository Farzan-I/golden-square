require 'present'

RSpec.describe Present do
  context "when no present is there" do
    it "fails if unwrap without wrapping first" do
      present = Present.new
      expect { present.unwrap() }.to raise_error "No contents have been wrapped."
    end
  end

  context "when no present is there" do
    it "wraps and unwraps a value" do
      present = Present.new
      present.wrap(6)
      expect(present.unwrap).to eq 6
    end
  end

  context "when present has already been wrapped" do
    it "fails if we wrap contents that have already been wrapped" do
      present = Present.new
      present.wrap(3)
      expect { present.wrap(4) }.to raise_error "A contents has already been wrapped."
      expect(present.unwrap).to eq 3
    end
  end
end