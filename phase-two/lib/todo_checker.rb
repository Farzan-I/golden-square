def todo_checker(text)
  fail "Has to provide a string with one character or more" if text.length < 1

  if text.include?("#TODO")
    return true
  else
    return false
  end
end