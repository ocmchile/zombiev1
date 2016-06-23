require_relative 'zombie'
class Juego
	def initialize
		preparar
	end
	def preparar
		@arrZombies = []
		File.open("data.txt").readlines.each do |line|
			@arrZombies << Zombie.new(line.split(",")[0], line.split(",")[1])
		end
		# puts contents
		# puts contents.class
		# contents.each do |i|
		# 	@arrZombies << Zombie.new(i.split(",")[0], i.split(",")[1])
		# end
	end

	def show
		print @arrZombies
	end

	def jugar
		@arrZombies.each do |i|
			print i.caminar
		end
	end
end

z = Juego.new
z.jugar
z.show