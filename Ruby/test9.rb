
beethoven = {"name" => "Beethoven", "year_born" => 1770, "year_died" => 1827}
kant = {"name" => "Kant", "year_born" => 1724, "year_died" => 1804}

def compare_age(person1, person2)
  if person1["year_born"] < person2["year_born"]
    puts "#{person1["name"]} is older than #{person2["name"]}"
  else
    puts "#{person1["name"]} is younger than #{person2["name"]}"
  end
end

compare_age(beethoven, kant)
