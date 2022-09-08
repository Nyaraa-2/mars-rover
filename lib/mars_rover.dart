import 'package:mars_rover/model/grid.dart';
import 'model/rover.dart';

void stringDirection(String direction) {
  int stringX = 0;
  int stringY = 0;
  for (var i = 0; i < direction.length; i++) {
    switch (direction[i]) {
      case "S":
        if (stringY == 0) {
          stringY = 10;
        } else {
          stringY -= 1;
        }
        break;
      case "N":
        if (stringY == 10) {
          stringY = 0;
        } else {
          stringY += 1;
        }
        break;
      case "O":
        if (stringX == 0) {
          stringX = 10;
        } else {
          stringX -= 1;
        }
        break;
      case "E":
        if (stringX == 10) {
          stringX = 0;
        } else {
          stringX += 1;
        }
        break;
      default:
    }
  }
  Map<int, int> res = {stringX: stringY};
  print(res);
}

void main(List<String> args) {
  Rover rover = Rover();
  Grid grid = Grid();
  stringDirection("NNNNEEEE");
  stringDirection("SO");
  stringDirection("NNENNOONN");

  // int x = grid.getAbcissValue(grid, -12);
  // int y = grid.getOrdinateValue(grid, x, -2);
  // rover.setPositionRover(x: x, y: y);

  // int z = grid.getAbcissValue(grid, 5);
  // int u = grid.getOrdinateValue(grid, z, 0);
  // rover.setPositionRover(x: z, y: u);

  // int back = grid.getAbcissValue(grid, 1);
  // rover.setPositionRover(x: back, y: rover.posY);
}
