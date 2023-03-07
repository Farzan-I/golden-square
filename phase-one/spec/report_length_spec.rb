require 'report_length'

RSpec.describe 'report_length method' do
  it 'checks if the correct length of a given string matches the output' do
    result = report_length("length")
    expect(result).to eq "This string is 6 characters long"
  end
end
