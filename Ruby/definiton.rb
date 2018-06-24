def newsletter(*receipients, inhalt)
  receipients.each {|receipients| puts "#{receipients}, #{inhalt}"}
end

newsletter("Viola", "Biography", "Photography")
