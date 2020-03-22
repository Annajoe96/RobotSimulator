# Robot Simulator

The robot has three possible movements: 
1. turn right 
2. turn left 
3. advance 

Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or west) at a set of {x,y} coordinates, e.g., {3,8}, with coordinates increasing to the north and east. The robot then receives a number of instructions, at which point the testing facility verifies the robot's new position, and in which direction it is pointing. 

The letter-string "RAALAL" means: 
1. Turn right 
2. Advance twice 
3. Turn left 
4. Advance once 
5. Turn left

Say a robot starts at {7, 3} facing north. Then running this stream of instructions should leave it at {9, 4} facing west.

Example:  
Input: `RAALAL`
Expected outcome: `{7, 3} facing north`

## Robot Usage

Creating the Robot:
```
bot = Robot.new(x: 5, y: 1, direction: "north")
```
Initialize the robot at certain coordinates with a given direction. If no parameters are passed, it will default to position `{0, 0}` on the grid and it's direction facing `north`.

Moving the Robot:
```
bot.move!
```
This would make the robot move a point in the direction it is facing. 

Turning the Robot:
```
bot.turn_right!
bot.turn_left!
```
This will update the direction the robot is facing without updating the coordinates of the robot. Further `move!` commands will move the robot in that direction. 





