require 'greet'

RSpec.describe "greet method" do
  it 'returns Hello with the input name' do
    name_given = greet("Jonny")
    expect(name_given).to eq "Hello, Jonny!"
  end
end