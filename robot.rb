class Robot

#initilaizing first position of the robot

  def initialize(x: 0 , y: 0, direction: "north")
    @x = x
    @y = y
    @direction = direction
  end
  
  #depending on the direction the robot is facing the commands influence the robots position

  def turn_right
    if @direction == "north"
      @direction = "east"  
    elsif @direction == "east"
      @direction = "south"
    elsif @direction == "south"
      @direction = "west"
    elsif @direction == "west"
      @direction = "north"
    end
  end
  
  def turn_left 
    if @direction == "north"
      @direction = "west"
    elsif @direction == "west"
      @direction = "south"
    elsif @direction == "south"
      @direction = "east"
    elsif @direction == "east"
      @direction = "north"
    end
  end
  
  #progess of steps taken according to instruction

  def move
    if @direction == "east"
      @x += 1
    elsif @direction == "north"
      @y += 1
    elsif @direction == "west"
      @x -= 1
    elsif @direction == "south"
      @y -= 1
    end
  end
  
  #to get the current position
  
  def get_position 
    [@x, @y]
  end
  
  #to get current position
  
  def get_direction
    @direction
  end

end 
