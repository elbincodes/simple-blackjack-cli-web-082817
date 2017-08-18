def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  # input = gets.chomp
  # I wrote the above
end

def get_user_input
  # code #get_user_input here
  # prompt_user
  input = gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(number)
  # code hit? here
  prompt_user
  answer = get_user_input
  if answer == "h"
    number += deal_card
  elsif answer == "s"
   number = number * 1
  else
    invalid_command
    prompt_user
  end
  number
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
