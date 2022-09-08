import 'package:mars_rover/model/grid.dart';
import 'model/rover.dart';

void main(List<String> args) {
  Rover rover = Rover("Alexandre");
  Grid grid = Grid();
  rover.setPositionRover(
      x: grid.coordonnees.keys.elementAt(0),
      y: grid.coordonnees[0]!.elementAt(1));
  rover.getMyPosition();
}
