require 'todo_checker'

RSpec.describe 'todo_checker method' do
  context 'initially' do
    it 'fails if given a string with no characters' do
      expect{ todo_checker("") }.to raise_error "Has to provide a string with one character or more"
    end
  end

  context 'given a sentence without #TODO' do
    it 'returns false' do
      result = todo_checker("Hello, I am Farzan")
      expect(result).to eq false
    end
  end

  context 'given a sentence with #TODO' do
    it 'returns true' do
      result = todo_checker("Hello, #TODO")
      expect(result).to eq true
    end
  end

  context 'given a sentence with wrong spelling of #TODO' do
    it 'returns false' do
      result = todo_checker("Hello, #ToDo")
      expect(result).to eq false
    end
  end

  context 'given a sentence without the hashtag for TODO' do
    it 'returns false' do
      result = todo_checker("Hello, I am Farzan. I have a TODO list")
      expect(result).to eq false
    end
  end
end