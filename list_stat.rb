scores = []
File.open("scores.txt", "r") do |score|
  scores.each do |score|
   scores.push score
   puts score
  end
end