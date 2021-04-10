def say_hello (string_to_print)
  puts string_to_print
end

name = 'Dude'

a_phrase = "Hey there! My name is #{name}."

say_hello a_phrase

new_name = 'Vex'

say_hello "My bad, I should have said:\n#{a_phrase.sub(name, new_name)}"

say_hello "My name is a #{name.class}, but 10 is a #{10.class} and yet you can convert it to a #{10.to_s.class}"

say_hello "My methods are:\n#{name.methods}"
