def say_hello(name)
  return "hello #{name}" # changed from #(name)
end

say_hello("farzan")

# Intended output:
#
# > say_hello("farzan")
# => "hello farzan"

# Using irb, I managed to find the cause without looking at the code first
