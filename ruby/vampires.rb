# New employee data collection

puts "How many employees will be processed?"
total_employees = gets.chomp.to_i

processed_employees = 0

until processed_employees == total_employees
  processed_employees = processed_employees + 1 


    puts "What is your name?"
    name = gets.chomp

  until name != ""
    puts "What is your name?"
    name = gets.chomp
  end 

  if (name == "Drake Cula") || (name == "Tu Fang")
    vampire_name = true
  else
    vampire_name = false
  end


  puts "How old are you?"
  age = gets.chomp

  until age != ""
    puts "How old are you?"
    age = gets.chomp
  end 

  puts "What year were you born?"
  birthyear = gets.chomp

  until birthyear != ""
    puts "What year were you born?"
    birthyear = gets.chomp
  end 

  if age.to_i == 2017 - birthyear.to_i
    correct_age = true
  elsif (age.to_i > 2017 - birthyear.to_i) || (age.to_i < 2017 - birthyear.to_i)
    correct_age = false
  end


  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic = gets.chomp

  until (garlic == "y") || (garlic == "n")
    puts "Please respond with 'y' or 'n'. Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    garlic = gets.chomp
  end 

  if garlic == "y" 
    likes_garlic = true
  elsif garlic == "n"
    likes_garlic = false
  end 

  puts "Would you like to enroll in the company’s health insurance? (y/n)"
  healthinsurance = gets.chomp

  until (healthinsurance == "y") || (healthinsurance == "n")
    puts "Please respond with 'y' or 'n'. Would you like to enroll in the company’s health insurance? (y/n)"
    healthinsurance = gets.chomp
  end 

  if healthinsurance == "y" 
    wants_healthinsurance = true 
  elsif healthinsurance == "n"
    wants_healthinsurance = false
  end 

  # Check for suspicious allergies
  
  allergies = ""
  puts "Please list any allergies one at a time by pressing the enter key after each allergy entry. When you are finished, type 'done' and hit the enter key."
  
  until allergies == "done" || allergies == "sunshine"
    allergies = gets.chomp
  end 
  
  if allergies == "sunshine"
    sunshineallergy = true
  elsif allergies == "done"
    sunshineallergy = false
  end
  
  # Scenario Testing

  if correct_age && (likes_garlic || wants_healthinsurance)
    vampirepotential = "Probably not a vampire."
    conclusive = true
  end

  if sunshineallergy || (!correct_age && (!likes_garlic || !wants_healthinsurance))
    vampirepotential = "Probably a vampire."
    conclusive = true
  end

  if !correct_age && !likes_garlic && !wants_healthinsurance
    vampirepotential = "Almost certainly a vampire."
    conclusive = true
  end

  if vampire_name
    vampirepotential = "Definitely a vampire."
    conclusive = true 
  end

  if !conclusive
    vampirepotential = "Results inconclusive."
  end 

  puts vampirepotential
end

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."














