# - User inputs question
# - Computer outputs random answer
# - User inputs "QUIT"
# - Computer outputs a goodbye message and exits
#BONUS
# - ability to add more answers:
# - via easter egg question ("add_answers")
# - do not let them add the same answer if the eight ball already has that answer
# - ability to reset answers back to the original bank (hint: think arr.clone)
# - via easter egg question ("reset_answers")
# - ability to have eight ball print all answers
# - via easter egg question ("print_answers")
# -ability to use script arguments when the magic eight ball is started to do bonus functionality above
# - for example ruby magic_eight.RB add_answers
# this would start your script but instead of running the regular way you would be prompted to add answers first


require 'pry'
require 'colorize'


  def give_answer
    answers = [
      "It is certain",
      "It is decidedly so",
      "Without a doubt",
      "Yes definitely",
      "You may rely on it",
      "As I see it, yes",
      "Most likely",
      "Outlook good",
      "Yes",
      "Signs point to yes",
      "Reply hazy try again",
      "Ask again later",
      "Better not tell you now",
      "Cannot predict now",
      "Concentrate and ask again",
      "Don't count on it",
      "My reply is no",
      "My sources say no",
      "Outlook not so good",
      "Very doubtful",
    ]
    puts ''
    puts "--==*** #{answers.sample} ***==--"
    puts ''
    puts ''
    puts ''
  end
# binding.pry
#greeting
  def greeting
      (1..4).each do |i|
        puts ''
      end
      puts '    *** MAGIC 8-BALL ***    '
      puts '____________________________'
      puts ''
    end
#quesiton
    def get_question
      puts 'Ask a yes-or-no question:'
      puts 'Type QUIT to exit'
      puts ''
      question = gets
      return question
    end
# binding.pry
  greeting
#function
  while true
    if get_question.downcase.strip == 'quit'
      puts 'See you next time.'
      exit
    end
    give_answer
  end
en
