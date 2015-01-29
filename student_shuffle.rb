# Program splits the class into teams of two.
# If there is an odd number of students, the last group will have three members.

puts "Enter student names. Enter 'done' when finished."

name = ""
students = []

# START INPUT
while name != "Done"
	name = gets.chomp.capitalize
	students.push(name)
end
# END INPUT

if students.length == 2
	puts "#{students[0]} will be working alone today."
else
	students = students[0..-2].shuffle!
	puts
	puts "Your student groups are: "
	count = 0
		until count > students.length - 2	
		if count < students.length - 3
			puts "#{students[count]} & #{students[count + 1]}"
		elsif students.length % 2 == 0
			puts "#{students[count]} & #{students[count + 1]}"
		else
			puts "#{students[count]} & #{students[count + 1]} & #{students[(count + 2)]}"
		end
		count += 2
	end
end

puts



