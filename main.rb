require './robot.rb'

puts "Hey! I am Daniel. I am a moving robot. Which position do I move to?"
command = gets.chomp.downcase.split("") 

daniel = Robot.new(x: 0, y: 0) #creating new object for input

#reading input to change direction of the robot 

command.each do |move|
  case move 
  when "r"
    daniel.turn_right
  when "a"
    daniel.move
  when "l"
    daniel.turn_left
  else 
  end
end

print daniel.get_position
puts daniel.get_direction
