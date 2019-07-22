DATA = [100, 98, 48, 23, 1, 0, 48, 48, 30]

sorted_data = DATA.sort { |a, b| b <=> a }

sorted_data.each { |i| puts i }

prev_value = nil
prev_rank = nil
ranked = []
sorted_data.each_with_index do |v, index|
  if prev_value == v
    ranked.push(prev_rank)
  else
    ranked.push(index + 1)
    prev_value = v
    prev_rank = index + 1
  end
end

p ranked
