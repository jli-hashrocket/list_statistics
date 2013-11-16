scores = []
File.open("scores.txt", "r") do |score_file|
  score_file.each do |score|
    scores.push score
  end
end

puts "Here are the test scores:"
scores.each do |item|
  item.gsub(/[\\n]/,"")
  item = item.to_i 
  puts item
end

lowest = scores.min
highest = scores.max
total = scores.inject(0){|sum, num| sum.to_i + num.to_i}
avg = total / scores.length
puts "Here is the average score: #{avg.to_f}"

