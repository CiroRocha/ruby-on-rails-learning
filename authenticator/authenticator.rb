USERS_DATA = [
  { name: "Sprinkles The Furret", username: "sprinkles", password: "immalive" },
  { name: "It's Dat Boi", username: "datboi", password: "ohshit" },
  { name: "Laís Rodrigues Cardoso", username: "gr4c3", password: "senha" },
  { name: "Jake The Dog", username: "jake", password: "ilovfinn123" },
  { name: "Molenga", username: "meow", password: "meow" },
]

$attempts = 0

def update_attempts ()
  $attempts = $attempts + 1
  if $attempts > 3
    puts "Number of attempts exceeded."
    exit
  end
end

def validate (username, password)
  begin
    data = {}
    USERS_DATA.each do |data_hash|
      if data_hash[:username] == username
        data = data_hash
        break
      end
    end
    if (data[:password] === password)
      puts "Login successful, welcome #{data[:name]}."
    else
      update_attempts()
      puts "Wrong password. Please try again."
      login()
    end
  rescue => exception
    puts exception
    update_attempts()
    puts "Please input valid data"
    login()
  end
end

def login ()
  puts "Username:"
  username = gets.chomp
  puts "Password:"
  password = gets.chomp
  validate(username, password)
end

login()
