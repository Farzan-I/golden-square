require 'check_codeword'

RSpec.describe 'check_codeword method' do
  it 'returns a correct message if  given the right codeword' do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it 'returns a close message if given the close codeword' do
    close_call = check_codeword("home")
    expect(close_call).to eq "Close, but nope."
  end
  
  it 'returns a wrong message if given the wrong codeword' do
    not_close = check_codeword("fellow")
    expect(not_close).to eq "WRONG!"
  end

  it 'returns a wrong message if given the right first letter codeword' do
    not_close = check_codeword("hello")
    expect(not_close).to eq "WRONG!"
  end

  it 'returns a wrong message if given the right last letter codeword' do
    not_close = check_codeword("breathe")
    expect(not_close).to eq "WRONG!"
  end
end