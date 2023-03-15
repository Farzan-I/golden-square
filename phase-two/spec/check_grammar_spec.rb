require "check_grammar"

RSpec.describe "check_grammar method" do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "Not a sentence."
    end
  end

  context "given a sentence with a capital letter and full stop" do
    it "returns true" do
      result = check_grammar("Hello, I am Farzan.")
      expect(result).to eq true
    end
  end

  context "given a sentence without a capital letter" do
    it "returns false" do
      result = check_grammar("hello, I am Farzan.")
      expect(result).to eq false
    end
  end

  context "given a sentence without a full stop" do
    it "returns false" do
      result = check_grammar("Hello, I am Farzan")
      expect(result).to eq false
    end
  end

  context "given a sentence without a full stop or a capital" do
    it "returns false" do
      result = check_grammar("hello, I am Farzan")
      expect(result).to eq false
    end
  end

  context "given a sentence with an uppercase first word and a full stop" do
    it "returns true" do
      result = check_grammar("HELLO, I am Farzan.")
      expect(result).to eq true
    end
  end

  context "given a correct sentence with an exclamation mark on the end" do
    it "returns true" do
      result = check_grammar("Hello, I am Farzan!")
      expect(result).to eq true
    end
  end

  context "given a correct sentence with a question mark on the end" do
    it "returns true" do
      result = check_grammar("Hello, I am Farzan?")
      expect(result).to eq true
    end
  end

  context "given a sentence with a comma on the end" do
    it "returns false" do
      result = check_grammar("Hello, I am Farzan,")
      expect(result).to eq false
    end
  end
end
