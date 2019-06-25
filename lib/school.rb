# code here!

class School
	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if !@roster.keys.include?(grade)
			@roster[grade] = []
		end
		@roster[grade] << name
	end

	def roster
		@roster
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		sorted_school = {}
		@roster.each{|k,v| sorted_school[k] = v.sort}
		sorted_school
	end
end