names = []
phones = []

loop do
  puts "Give me a name."
  name = gets.chomp
  break if name == ""
  names << name
  puts "Give me #{name}'s phone number."
  phone = gets.chomp
  phones << phone
end

loop do
  puts "Give me a name, and I will give you the phone number."
  name = gets.chomp
  break if name == ""
  i = names.index(name)
  if i.nil?
    puts "No name found."
  else
    puts phones[i]
  end
end
