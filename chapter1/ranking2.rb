DATA = [28, 30, 100, 0, 1, 25, 72]

def get_rank(v)
  rank = 1
  DATA.each do |i|
    if i > v
      rank += 1
    end
  end
  return rank
end

puts get_rank(1)
puts get_rank(100)
puts get_rank(0)
p DATA.sort
