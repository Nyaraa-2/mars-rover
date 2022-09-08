import 'package:mars_rover/model/grid.dart';
import 'model/rover.dart';
import 'package:mars_rover/model/obstacle.dart';

void main(List<String> args) {
  Rover rover = Rover();
  Grid grid = Grid();
  Obstacle obstacle = Obstacle();

  int px = grid.getAbcissValue(grid, 10);
  int py = grid.getOrdinateValue(grid, px, 5);
  rover.setPositionRover(x: px, y: py);

  int x = grid.getAbcissValue(grid, 10);
  int y = grid.getOrdinateValue(grid, x, 5);

  if (x == px && y == py) {
    obstacle.setPositionObstacle(x: x, y: y);
    if (x == px) {
      rover.setPositionRover(x: px + 1, y: py);
    } else if (y == py) {
      rover.setPositionRover(x: px, y: py + 1);
    }
  }
  // int z = grid.getAbcissValue(grid, 5);
  // int u = grid.getOrdinateValue(grid, z, 0);
  // rover.setPositionRover(x: z, y: u);

  int back = grid.getAbcissValue(grid, 1);
  rover.setPositionRover(x: back, y: rover.posY);
}
