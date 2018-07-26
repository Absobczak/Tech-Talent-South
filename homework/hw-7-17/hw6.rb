puts "rock paper or scissors"

choice = gets.chomp.downcase

hands = ["rock", "paper", "scissors"]

cpchoice = hands.sample

if choice == cpchoice
    puts "It's a tie the computer chose #{cpchoice} too"
elsif choice == "rock" && cpchoice == "paper"
    puts "You lose!! Paper beats Rock!"
elsif choice == "rock" && cpchoice == "scissors"
    puts "You win!! Rock beats Scissors"
elsif choice == "paper" && cpchoice == "rock"
    puts "You win!! Paper beats Rock"
elsif choice == "paper" && cpchoice == "scissors"
    puts "You Lose!! Scissors beats Paper!"
elsif choice == "scissors" && cpchoice == "paper"
    puts "You win!! Scissors beats Paper!"
else choice == "scissors" && cpchoice == "paper"
    puts "You lose!! Rock beats Scissors!"
end
