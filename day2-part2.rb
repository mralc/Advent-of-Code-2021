horizontal = 0
depth = 0
aim = 0

File.readlines('day2-input.txt').each do |instructions|
#  puts instructions
  instructions_split = instructions.split(' ')
  direction = instructions_split.first
  distanace = instructions_split.last
  if direction == "forward" 
    puts direction
    puts distanace.to_i
    depth_increase = aim * distanace.to_i
    depth = depth + depth_increase
    horizontal = horizontal + distanace.to_i
    puts horizontal
    puts depth_increase
  end
  if direction == "down" then
    aim = aim + distanace.to_i
    puts direction
    puts aim
  end
  if direction == "up" then
    aim = aim - distanace.to_i
    puts direction
    puts aim
  end

end

answer = horizontal * depth
puts answer

