count = 0
previous_measurement = 0
File.readlines('day1-input.txt').each do |depth_measurement|
  if previous_measurement == 0
    previous_measurement = depth_measurement
    puts "#{depth_measurement} N/A - no previous measurement"
  else
    if depth_measurement >= previous_measurement
      previous_measurement = depth_measurement
      count += 1
      puts "#{depth_measurement}"
    else
      previous_measurement = depth_measurement
      puts "#{depth_measurement}"
    end
  end
end


puts count