require 'extract_uppercase'

RSpec.describe 'extract_uppercase method' do
  context 'initially' do
    it 'returns an empty string if given an empty string' do
      expect(extract_uppercase("")).to eq []
    end

    it 'returns an empty list if given a string with no uppercase word' do
      expect(extract_uppercase("hello world")).to eq []
    end
  end

  it 'returns only the uppercase wprds given a string with mixed words' do
    result = extract_uppercase("hello WORLD")
    expect(result).to eq ["WORLD"]
  end

  it 'returns the uppercase words when given a string with uppercase words' do
    result = extract_uppercase("HELLO WORLD")
    expect(result).to eq ["HELLO", "WORLD"]
  end

  it 'does not extract mixed case words' do
    result = extract_uppercase("hello WoRLD")
    expect(result).to eq []
  end

  it 'ignores and strips punctuation' do
    result = extract_uppercase("HELLO! WORLD!")
    expect(result).to eq ["HELLO", "WORLD"]
  end

end

