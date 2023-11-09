def computer
    array = Array["rock", "paper", "scissors"]
    randomElement = rand(array.length)
    return array[randomElement]
end

def logic user, computer
    if user === computer
        puts "This game is tied!"
    elsif user === "rock"
        if computer === "paper"
            return "Computer wins!"
            elsif computer === "scissors"
                return "Computer wins!"
            end
        elsif user === "paper"
            if computer === "rock"
                return "User wins!"
            elsif computer === "scissors"
                return "Computer wins!"
            end
        elsif user === "scissors"
            if computer === "rock"
                return "Computer wins!"
            elsif computer === "paper"
                return "User wins!"
            end
        end
end

def user item
    if item === "rock"
        return "rock"
    elsif item === "paper"
        return "paper"
    elsif item === "scissors"
        return "scissors"
    else
        return "Invalid item. (rock, paper, scissors)"
    end
end


puts "Welcome to rock paper scissors! Just type either rock, paper, or scissors and the computer will play with you!"
user_input = gets.chomp

user_choice = user(user_input)

computer_choice = computer()

puts logic(user_choice, computer_choice)