class GrammarStats
  def initialize
    # ...
  end

  def check(text)
    fail "Text can't be given empty" if text.empty?

    first_letter_capital = text[0] == text[0].upcase
    last_character_is_correct = [".", "!", "?"].include? text[-1]

    if first_letter_capital && last_character_is_correct
      return true
    else
      false
    end
  end

  def percentage_good
    return 100 
    
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end