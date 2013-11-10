# announcing winners
winners = [
	"Homestar",
	"King of Town",
	"Marzipan",
	"Strongbad"
]

Place = Struct.new(:index, :name, :prize) do
	# implicit conversion
	def to_int
		index
	end
end

first = Place.new(0, "first", "Peasant's Quest game")
second = Place.new(1, "second", "Limozeen Album")
third = Place.new(2, "third", "Butter-da")

[first, second, third].each do |place|
	# Ruby arrays use #to_int to convert the array index argument to an integer
	puts "In #{place.name} place, #{winners[place]}!"
	puts "You win: #{place.prize}"
end

# concating strings
class ArticleTitle
	def initialize(text)
		@text = text
	end

	# implicit conversion
	def to_str
		@text
	end
end

title = ArticleTitle.new("A Modest Proposal")
feature = "Today's Feature: " + title
puts feature

# be forgiving: use implicit conversions
PHONE_EXTENSIONS = ["Operator", "Sales", "Customer Service"]

def dial_extension(dialed_number)
	dialed_number = dialed_number.to_i # implicit conversion
	extension = PHONE_EXTENSIONS[dialed_number]
	puts "Please hold while you are connected to #{extension}"
end

puts nil.to_i
dial_extension(nil)

# be strict: use explicit conversions
def set_centrifuge_speed(new_rpm)
	new_rpm = new_rpm.to_int # explicit conversion
	puts "Adjusting centrifuge to #{new_rpm} RPM"
end

bad_input = nil
set_centrifuge_speed(bad_input)
