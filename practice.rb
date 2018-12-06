seating = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def sitdown(seating)
  seating.each_with_index do |row, rownum|
    rownum.each do |seat|
      if seat == nil
        puts "Row #{rownum+1} seat #{rownum.index(seat+1} is free. Do you want to sit there (y/n)?"
        answer = gets.chomp
        if answer == "y"
          puts "What is your name?"
          name = gets.chomp
          seating[seating.index(rownum)+1][rownum.index(seat)+1] = name
          puts seating
        end
      end
    end
  end
end

sitdown(seating)
