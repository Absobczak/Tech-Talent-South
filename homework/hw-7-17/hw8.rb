scores = []

10.times do
    scores.push(rand(0..100))
end


sorted_scores = scores.sort

print sorted_scores

sum = 0

scores.each do |score|
    
    sum += score
    
end

puts sum/10