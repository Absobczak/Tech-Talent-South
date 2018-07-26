@score = 0
@count = 0

def menu
    
    puts "What would you like to do, press 1 to build a quiz, press 2 to take a quiz"
    
    choice = gets.chomp.to_i
    
    case choice
        when 1
            build_quiz
        when 2
            choose_quiz
        else
            puts "not a valid option"
            menu
    end

end

def build_quiz
    
    puts "Please enter title:"
    @title = gets.chomp

    puts "Please provide the number of questions you would like to ask" 
    num = gets.chomp.to_i

    @qs_and_as = {}

    num.times do
    
        puts "Enter a yes or no question"
    
        q = gets.chomp
    
        puts "What's the answer? [y or n]"

        a = gets.chomp.downcase
    
        @qs_and_as[q] = a
        
    end 
    menu
end

def choose_quiz
    
    puts @title
    
    @qs_and_as.each do |q, a|
        
        puts q
        answer = gets.chomp
      
        if answer == a
            puts "Correct"
            @score +=1
        else
            puts "Incorrect"
        end
        @count +=1
    end
    
    puts "Your score is #{@score}/#{@count}"
    
end

menu

puts "Thank you for you participation"



