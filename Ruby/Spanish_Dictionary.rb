de_es_dic = {
"Computer" => "ordenador",
"Netzwerk" => "Red",
"Netzwerkverbindung" => "conexión de red",
"Verbindung" => "conexión",
"Problem" => "Problema",
"fehlen" => "falta",
"Fehler" => "error"
}

# de_es_dic[Server] = "servidor"
# de_es_dic[langsam] ="lentamente"
#
# de_es_dic.delete("fehlen")
#
# de_es_dic.each_key { |key| puts key }
#


puts "What are you looking for? Press E for English or S for Spanish."
language = gets.chomp
if language == "E"
puts "You have choosen English, very well! Please enter a word you wanna have translated: "
word = gets.chomp
else
  puts "You have chosen Spanish, muy bien! Please enter a word you wanna have translated: "
  palabra = gets.chomp
end
