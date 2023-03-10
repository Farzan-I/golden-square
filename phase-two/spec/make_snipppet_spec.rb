require 'make_snippet'

RSpec.describe 'make_snippet method' do
  it 'returns the first five words of a string' do
    result = make_snippet("Encounters between unacquainted persons occur")
    expect(result).to eq "Encounters between unacquainted persons occur"
  end

  it 'returns the first five words of a string and if longer adds a ... afterwards' do
    result = make_snippet("Encounters between unacquainted persons occur spontaneously")
    expect(result).to eq "Encounters between unacquainted persons occur..."
  end
end