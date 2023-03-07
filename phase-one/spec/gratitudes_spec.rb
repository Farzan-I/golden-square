require 'gratitudes'

RSpec.describe Gratitudes do
  context "initially" do
    it "initially returns an empty string as an output with the format string" do
      gratitudes = Gratitudes.new
      expect(gratitudes.format).to eq "Be grateful for: "
    end
  end

  context "gives many additions of a string" do
    it "gives an output with one inputted string" do
      gratitudes = Gratitudes.new
      gratitudes.add("your brother")
      expect(gratitudes.format).to eq "Be grateful for: your brother"
    end

    it "gives an output with one inputted string" do
      gratitudes = Gratitudes.new
      gratitudes.add("your work")
      gratitudes.add("your health")
      gratitudes.add("your mind")
      expect(gratitudes.format).to eq "Be grateful for: your work, your health, your mind"
    end
  end
end
