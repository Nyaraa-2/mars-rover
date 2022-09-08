import 'package:mars_rover/model/grid.dart';
import 'model/rover.dart';
//import 'dart:io';

void main(List<String> args) {
  Rover rover = Rover();
  Grid grid = Grid();
  int x = grid.getAbcissValue(grid, 45);
  int y = grid.getOrdinateValue(grid, x, 2);
  rover.setPositionRover(x: x, y: y);

  int z = grid.getAbcissValue(grid, 5);
  int u = grid.getOrdinateValue(grid, z, 0);
  rover.setPositionRover(x: z, y: u);

  int back = grid.getAbcissValue(grid, 1);
  rover.setPositionRover(x: back, y: rover.posY);
}
