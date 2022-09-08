import 'package:mars_rover/model/grid.dart';
import 'model/rover.dart';

void main(List<String> args) {
  Rover rover = Rover();
  Grid grid = Grid();

  rover.setPositionRover(
      x: grid.getAbcissValue(grid, 0), y: grid.getOrdinateValue(grid, 0, 1));
  rover.getMyPosition();

  rover.setPositionRover(x: grid.getAbcissValue(grid, 1), y: rover.posY);
  rover.getMyPosition();

  rover.setPositionRover(
      x: rover.posX, y: grid.getOrdinateValue(grid, rover.posX, 2));
  rover.getMyPosition();
}
