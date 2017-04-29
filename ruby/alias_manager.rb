
full_name = ""
name_storage = {}
  
  def new_alias(full_name)
    full_name.split(" ")
    swapped_name = "#{full_name.split(" ")[1]} #{full_name.split(" ")[0]}"
    swapped_name.tr('AEIOUaeiouBCDFGHJKLMNPQRSTVWXYZbcdfghjklmnpqrstvwxyz', 'EIOUAeiouaCDFGHJKLMNPQRSTVWXYZBcdfghjklmnpqrstvwxyzb')
  end
  
until full_name == "quit"
  puts "Please enter a set of first and last names you wish to create an alias out of. Otherwise, enter 'quit'."
  
  full_name = gets.chomp
  name_storage[full_name] = new_alias(full_name)
  
  if full_name != "quit"
    puts new_alias(full_name)
  end
end

name_storage.each do |spyname, realname|
  puts "#{spyname} is actually #{realname}."
end







