import 'package:mars_rover/model/grid.dart';
import 'package:mars_rover/model/obstacle.dart';
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

  test('Get rover position and direction on create North', () {
    //* Arrange
    Rover rover = Rover();
    Grid grid = Grid();
    //* Act
    rover.setPositionRover(
        x: grid.coordonnees.keys.elementAt(0),
        y: grid.coordonnees[0]!.elementAt(5));
    //* Asset
    expect(rover.posX, 0);
    expect(rover.posY, 5);
    expect(rover.direction, Direction.north);
  });

  test('Get rover position and direction on create South', () {
    //* Arrange
    Rover rover = Rover();
    rover.posY = 10;
    Grid grid = Grid();
    //* Act
    rover.setPositionRover(
        x: grid.coordonnees.keys.elementAt(0),
        y: grid.coordonnees[0]!.elementAt(5));
    //* Asset
    expect(rover.posX, 0);
    expect(rover.posY, 5);
    expect(rover.direction, Direction.south);
  });

  test('Get rover position and direction on create West', () {
    //* Arrange
    Rover rover = Rover();
    rover.posX = 10;
    Grid grid = Grid();
    //* Act
    rover.setPositionRover(
        x: grid.coordonnees.keys.elementAt(0),
        y: grid.coordonnees[0]!.elementAt(0));
    //* Asset
    expect(rover.posX, 0);
    expect(rover.posY, 0);
    expect(rover.direction, Direction.west);
  });

  test('Get rover position and direction on create East', () {
    //* Arrange
    Rover rover = Rover();
    Grid grid = Grid();
    //* Act
    rover.setPositionRover(
        x: grid.coordonnees.keys.elementAt(10),
        y: grid.coordonnees[0]!.elementAt(0));
    //* Asset
    expect(rover.posX, 10);
    expect(rover.posY, 0);
    expect(rover.direction, Direction.east);
  });

  test('Get obstacle position', () {
    //* Arrange
    Obstacle obstacle = Obstacle();

    //* Act

    //* Asset
    expect(obstacle.positionX, 5);
    expect(obstacle.positionY, 0);
    expect(obstacle.obstacleName, ObstacleName.GrosCaillou);
  });
}
