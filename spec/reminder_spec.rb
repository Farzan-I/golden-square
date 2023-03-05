require 'reminder'

RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Fazzy")
    reminder.remind_me_to("Watch the fierce rivals derby at 4:30pm")
    result = reminder.remind()
    expect(result).to eq "Watch the fierce rivals derby at 4:30pm, Fazzy!"
  end
end