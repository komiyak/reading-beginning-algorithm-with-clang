N = 10

seed = []
N.times do |i|
  seed.push i
end

data = []
N.times do |i|
  index = rand(0...N-i)
  v = seed[index]
  seed.delete_at(index)

  data.push(v)
end

pp data
