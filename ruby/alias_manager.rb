
puts "Welcome to the Alias Generator. Let's get started. Please enter your first and last names."

full_name = gets.chomp

  def new_alias(full_name)
    full_name.split(" ")
    swapped_name = "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
    puts swapped_name.tr('AEIOUaeiouBCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz', 'EIOUAeiouaCDFGHJKLMNPQRSTVWXYZBcdfghjklmnpqrstvwxyzb')
  end
  
puts new_alias(full_name)

while full_name != "quit"
  puts "Want another one? Please enter another set of first and last names you wish to create an alias out of. Otherwise, you can quit at any time by entering 'quit'."
  full_name = gets.chomp

  def new_alias(full_name)
    full_name.split(" ")
    swapped_name = "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
    puts swapped_name.tr('AEIOUaeiouBCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz', 'EIOUAeiouaCDFGHJKLMNPQRSTVWXYZBcdfghjklmnpqrstvwxyzb')
  end
  
  if full_name != "quit" 
    puts new_alias(full_name)
  elsif full_name == "quit"
    break 
  end
end


