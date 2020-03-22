class Robot

  # initilaizing first position of the robot
  # starts at 0,0 as default position
  def initialize(x: 0 , y: 0, direction: "north")
    @x = x
    @y = y
    @direction = direction
  end
  
  def turn_right!
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
  
  def turn_left!
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
  
  # move one step in the direction it is facing
  def move!
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
  
  def get_position 
    [@x, @y]
  end
  
  def get_direction
    @direction
  end

end 
