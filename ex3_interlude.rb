def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    #decrement too soon
    #n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
    #move decrement here
    n -= 1
  end
  product
end

puts factorial(5)
# Intended output:
#
# > factorial(5)
# => 120
