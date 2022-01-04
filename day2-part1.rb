horizontal = 0
depth = 0

File.readlines('day2-input.txt').each do |instructions|
#  puts instructions
  instructions_split = instructions.split(' ')
  direction = instructions_split.first
  distanace = instructions_split.last
  if direction == "forward" then
#    puts distanace
    horizontal = horizontal + distanace.to_i
  end
  if direction == "down" then
    puts distanace
    depth = depth + distanace.to_i
    puts depth
  end
  if direction == "up" then
    puts distanace
    depth = depth - distanace.to_i
  end

end

answer = horizontal * depth
puts answer

