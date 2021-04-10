def empty_method
end

def block (title, callback = method(:empty_method), second_line = true)
  puts title
  30.times{ print('-') }
  puts "\n"
  callback.call
  if second_line
    30.times{ print('-') }
  end
  puts "\n\n"
end

def gets_input ()
  puts "First number"
  first_input = gets.chomp
  puts "Second number"
  second_input = gets.chomp
  numbers = {
    "first_input" => first_input,
    "second_input" => second_input,
  }
  return numbers
end

def check_validity_and_print (first_float, second_float, final_string)
  if first_float > 0 && second_float > 0
    return puts final_string
  else
    return puts "Please provide numbers"
  end
end

def multiply ()
  inputs = gets_input
  first_float = inputs["first_input"].to_f
  second_float = inputs["second_input"].to_f
  check_validity_and_print(first_float, second_float, "\nYour result is #{first_float * second_float}")
end

def divide ()
  inputs = gets_input
  first_float = inputs["first_input"].to_f
  second_float = inputs["second_input"].to_f
  check_validity_and_print(first_float, second_float, "\nYour result is #{first_float / second_float}")
end

def subtract ()
  inputs = gets_input
  first_float = inputs["first_input"].to_f
  second_float = inputs["second_input"].to_f
  check_validity_and_print(first_float, second_float, "\nYour result is #{first_float - second_float}")
end

def add ()
  inputs = gets_input
  first_float = inputs["first_input"].to_f
  second_float = inputs["second_input"].to_f
  check_validity_and_print(first_float, second_float, "\nYour result is #{first_float + second_float}")
end

def module ()
  inputs = gets_input
  first_float = inputs["first_input"].to_f
  second_float = inputs["second_input"].to_f
  check_validity_and_print(first_float, second_float, "\nYour result is #{first_float % second_float}")
end

OPERATIONS = {
  "1" => "multiply",
  "2" => "divide",
  "3" => "add",
  "4" => "subtract",
  "5" => "module"
}

def print_operations ()
  OPERATIONS.each { |key, value| puts "#{key} - #{value.capitalize()}" }
end

def decider ()
  puts "What do you want to do?\n\n"
  print_operations()
  puts "0 - Exit"
  puts "\n"
  operation_selected = gets.chomp
  if operation_selected === "0"
    exit
  end
  if !OPERATIONS[operation_selected]
    puts "Please select a valid option\n"
    block("", method(:decider))
  end
  send(OPERATIONS[operation_selected])
  block("", method(:decider))
end

puts "\n"

block("A simple calculator", method(:empty_method), false)

block("", method(:decider))
