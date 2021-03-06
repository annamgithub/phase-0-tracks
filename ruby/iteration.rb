# Release 0

def print_name
  name1 = "Anna"
  name2 = "Kanan"
  puts "Hello teammates"
  yield [name1, name2]
end

print_name {|name1, name2| puts "Good teamwork, #{name1} and #{name2}!"}


# Release 1

student_name = ["Jim", "Jack", "Joe"]
p student_name
student_name.map! do |name1|
  puts name1
  name1.length
end
p student_name

student_name = ["Jim", "Jack", "Joe"]
p student_name
student_name.each do |name1|
  puts name1
  name1.length
end
p student_name


student_marks = {
  Jim: 89, 
  Jack: 73,
  Joe: 79
}
p student_marks
student_marks.each do|name1,marks|
puts name1, marks
end


# Release 2

# 1. (Array)
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.delete_if {|number| number < 3}

# 2. (Array)
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.keep_if {|number| number < 3}

# 3. (Array)
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.keep_if {|number| number < 10 && number > 6}

# 4. (Array)
numbers = [1, 2, 3, 4, 5 , 6, 7, 8, 9, 10]
numbers.reject {|number| number < 7}

numbers.take_while {|number| number < 7}


# 1. (Hash)
student_marks = {"Jim" => 89, "Jack" => 73, "Joe" => 79}
student_marks.reject! {|name, mark| mark > 80}
puts student_marks

# 2. (Hash)

student_marks = {"Jim" => 89, "Jack" => 73, "Joe" => 79}
student_marks.select! {|name, mark| mark > 80}
puts student_marks

# 3. (Hash)
student_marks = {"Jim" => 89, "Jack" => 73, "Joe" => 79}
student_marks.delete("Jim")
puts student_marks

# 4. (Hash)
student_marks = {"Jim" => 89, "Jack" => 73, "Joe" => 79}
student_marks.reject! {|name, mark| name == "Jim"}










