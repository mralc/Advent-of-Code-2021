bingonos = [79,9,13,43,53,51,40,47,56,27,0,14,33,60,61,36,72,48,83,42,10,86,41,75,16,80,15,93,95,45,68,96,84,11,85,63,18,31,35,74,71,91,39,88,55,6,21,12,58,29,69,37,44,98,89,78,17,64,59,76,54,30,65,82,28,50,32,77,66,24,1,70,92,23,8,49,38,73,94,26,22,34,97,25,87,19,57,7,2,3,46,67,90,62,20,5,52,99,81,4]

file_path = File.expand_path("day4-input.txt")

input = File.read(file_path)

lines = input.split("\n")
lines = input.split

count = 0 
values = []
subarray = []

lines.each do |num|
  subarray.push(num)
  count += 1
  if count == 25
    values.push(subarray)
    subarray = []
    count = 0 
  end
end


multi = Array.new(10) { Array.new }
boards = []
  
values.each do |num|
  numbersinrow = 0
  numberofrows = 0
  num.each do |num2|
    if numbersinrow == 4
      multi[numberofrows].push(num2.to_i)
      numbersinrow = 0
      numberofrows += 1
    else
      multi[numberofrows].push(num2.to_i)
      numbersinrow += 1
    end
  end

  colums = 5
  colums2 = 1

  multi[0].each do |num|
    
  	multi[colums].push(num.to_i)

    while colums2 < 5
      multi[colums].push(multi[colums2][colums2-1].to_i)
      colums2 += 1
    end
    colums2 = 1
    colums += 1
  end
    boards.push(multi)
    multi = []
    multi = Array.new(10) { Array.new }

end

boardindex = 0
linelndex = 0
    
bingonos.each do |bingono|

  boards.each do |board|
    board.each do |line| 
      vaule = line.find_index(bingono)
        if vaule != nil
          boards[boardindex][linelndex][vaule] = nil
            if boards[boardindex][linelndex].all?(&:nil?)
      
              p boards[boardindex][0..4].flatten.compact.sum * bingono
              
							p boards[boardindex]
              
							exit
            end
        end
      linelndex += 1
    end
    linelndex = 0
    boardindex +=1
  end

  boardindex = 0
end