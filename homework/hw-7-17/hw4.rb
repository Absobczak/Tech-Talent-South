system "clear"

puts "Please enter a word"

word =gets.chomp.char

if word.first == "a" || "e" || "i" || "u" || "o"
    puts "#{word}way"
else
    