NUM = 10
MAX = 100
MIN = 0

DATA = [56, 25, 67, 88, 100, 61, 55, 67, 76, 56]

rank = Array.new(MAX + 2, 0)

DATA.each do |i|
  rank[i] += 1
end

rank[MAX + 1] = 1
MAX.downto(MIN) do |i|
  rank[i] = rank[i] + rank[i + 1]
end

pp rank
