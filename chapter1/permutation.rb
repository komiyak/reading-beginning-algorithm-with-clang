N = 10

data = Array.new(N)

def used?(d, r)
  d.each do |i|
    return true if r == i
  end
  return false
end

N.times do |i|
  puts "-- #{i} times"

  loop do
    v = rand(1..N)
    puts v
    unless used?(data, v)
      data[i] = v
      break
    end
  end
end

pp data
