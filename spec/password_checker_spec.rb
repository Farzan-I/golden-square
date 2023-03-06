require 'password_checker'

RSpec.describe PasswordChecker do
  context "when the password is invalid" do
    it "fails if the password is less than 8 characters" do
      password_checker = PasswordChecker.new
      expect {password_checker.check("academy")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context "when the password is valid" do
    it "passes if the password is 8 or more characters" do
      password_checker = PasswordChecker.new
      expect(password_checker.check("academic")).to eq true
    end
  end
end