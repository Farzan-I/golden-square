def check_grammar(text)
  fail "Not a sentence." if text.empty?

  first_letter_capital = text[0] == text[0].upcase
  last_character_is_correct = [".", "!", "?"].include? text[-1]

  if first_letter_capital && last_character_is_correct
    return true
  else
    return false
  end
end
