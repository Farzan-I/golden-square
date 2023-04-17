# class GrammarStats
#   def initialize
#     # ...
#   end

#   def check(text)
#     fail "Text can't be given empty" if text.empty?
  
#     text[0] == text[0].upcase && [".", "!", "?"].include?(text[-1])
#   end

#   def percentage_good
#     return 100 
    
#     # Returns as an integer the percentage of texts checked so far that passed
#     # the check defined in the `check` method. The number 55 represents 55%.
#   end
# end

class GrammarStats
  def initialize
    @texts_checked = 0
    @texts_passed = 0
  end

  def check(text)
    fail "Text can't be given empty" if text.empty?

    @texts_checked += 1
    if text[0] == text[0].upcase && [".", "!", "?"].include?(text[-1])
      @texts_passed += 1
      true
    else
      false
    end
  end

  def percentage_good
    (@texts_passed.to_f / @texts_checked * 100).round
  end
end

grammar_stats = GrammarStats.new
grammar_stats.check("This is a valid sentence.")
puts grammar_stats.percentage_good