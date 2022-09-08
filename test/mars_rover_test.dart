import 'package:mars_rover/mars_rover.dart';
import 'package:mars_rover/model/grid.dart';
import 'package:mars_rover/model/rover.dart';
import 'package:test/test.dart';

void main() {
  test('Get x value', () {
    //* Arrange
    Grid grid = Grid();
    //* Act
    int x = grid.getAbcissValue(grid, 3);
    //* Asset
    expect(x, 3);
  });

  test('Get y value', () {
    //* Arrange
    Grid grid = Grid();
    //* Act
    int y = grid.getOrdinateValue(grid, 0, 5);
    //* Asset
    expect(y, 5);
  });

  test('Set rover position', () {
    //* Arrange
    Grid grid = Grid();
    Rover rover = Rover();

    //* Act
    rover.setPositionRover(
        x: grid.coordonnees.keys.elementAt(5),
        y: grid.coordonnees[0]!.elementAt(7));

    //* Asset
    expect(rover.posX, 5);
    expect(rover.posY, 7);
  });

  test('Get rover position on create', () {
    //* Arrange
    Rover rover = Rover();

    //* Act

    //* Asset
    expect(rover.posX, 0);
    expect(rover.posY, 0);
  });
}
