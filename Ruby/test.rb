
beethoven = {"name" => "Beethoven", "year_born" => 1770, "year_died" => 1827}
kant = {"name" => "Kant", "year_born" => 1750, "year_died" => 1854}
picasso = {"name" => "Picasso", "year_born" => 1899, "year_died" => 1950}


# age_beethoven = beethoven["year_died"] - beethoven["year_born"]
# age_kant = kant["year_died"] - kant["year_born"]
# if age_beethoven < age_kant
#   puts "Kant grew older"
# else
#   puts "Beethoven grew older"
# end

#compare_age



def compare_age(person1, person2)
  age_person1 = person1["year_died"] - person1["year_born"]
  age_person2 = person2["year_died"] - person2["year_born"]

  if age_person1 < age_person2
    puts "#{person2["name"]} (#{age_person2}) grew older than #{person1["name"]} (#{age_person1})"
  else
    puts "#{person2["name"]} (#{age_person2}) is younger than #{person1["name"]} (#{age_person1})"
  end
end

compare_age(picasso, kant)

compare_age(kant, beethoven)


examples:
Total amount with VAT
