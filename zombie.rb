class Zombie
	def initialize(x,y)
		@x = x
		@y = y
	end

	def caminar
		@x = Random.rand(100)
		@y = Random.rand(100)
	end

	def to_s
		print "#{@x},#{@y}"
	end
end

zombie = Zombie.new(12,60)
zombie.caminar
# print zombie