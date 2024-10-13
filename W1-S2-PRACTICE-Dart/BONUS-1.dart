enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  Direction turnRight(Direction direction){
    return Direction.values[(direction.index + 1 ) % Direction.values.length] ;
  };

  Direction turnLeft(direction){
    return Direction.values[(direction.index + 3) % 4];
  }

  void advance(){
    switch(direction){
      case Direction.north:
        y += 1;
        break;
      case Direction.east:
        x += 1;
        break;
      case Direction.south:
        y -= 1;
        break;
      case Direction.west:
        x -= 1;
        break;
    }
  }

  for(var instruction in instructions.split('')){
      if(instruction == 'R'){
        direction = turnRight(direction);
      }
      else if(instruction == 'L'){
        direction = turnLeft(direction);
      }
      else if(instruction == 'A'){
        advance();
      }
    }
  // Print the final position and direction
  print("Final position: $x $y");
  print("Facing: $direction ");
  
}
