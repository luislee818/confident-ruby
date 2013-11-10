def draw_line(start, endpoint)
	start = start.to_coords if start.respond_to?(:to_coords)
	start = start.to_ary
end

class Point
	def initialize(x, y, name=nil)
		@x, @y, @name = x, y, name
	end

	def to_coords
		[x, y]
	end
end
