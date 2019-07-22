def fact(n)
  result = n
  (n - 1).downto(0) do |i|
    result += (result * i)
  end
end

puts fact 2
