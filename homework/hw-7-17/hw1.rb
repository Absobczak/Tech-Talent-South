puts "Please provide your last test score"

score = gets.chomp.to_i

if score >= 90 && score <= 100
    puts "Congrats  you got an A"
elsif score >= 80 && score <= 89
    puts "Congrats  you got an B"
elsif score >=70 && score <=79
    puts "You got a C, lets try for better next time"
elsif score >=60 && score <= 69
    puts "You got a D, lets meet after class to discuss extra work"
elsif score < 60
    puts "You got an F, you fail, looking like summer school"
else score > 100
    puts "Wrong Score"
    
end
