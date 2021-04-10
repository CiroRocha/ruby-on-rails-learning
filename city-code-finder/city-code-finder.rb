DIAL_BOOK = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

def create_exception (exception)
  puts exception
end

def retreive_city_code_from_dial_book (city_name)
  formatted_name = city_name.gsub(" ", "").downcase
  city_code = DIAL_BOOK[formatted_name]
  create_exception("No code was found for city #{city_name}\n\n") if !city_code
  return city_code
end

def display_city_code (city_name, city_code)
  puts "The code for city #{city_name} is #{city_code}\n\n"
end

def get_input ()
  print "Type the name of a city or \"exit\" to quit: "
  city_name = gets.chomp
  return city_name
end

def index ()
  city_name = get_input()
  return if city_name.downcase === "exit"
  city_code = retreive_city_code_from_dial_book(city_name)
  return index() if !city_code
  display_city_code(city_name, city_code)
end

index()
