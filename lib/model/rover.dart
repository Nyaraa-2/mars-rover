enum Direction { north, south, east, west }

class Rover {
  int posX;
  int posY;
  Direction direction;
  Rover({this.posX = 0, this.posY = 0, this.direction = Direction.north});

  ///Update Rover position
  void setPositionRover({required int x, required int y}) {
    String arrowX = "";
    print("🚩 Initial position : ${direction.name} 🚩");

    if (x > posX) {
      direction = Direction.east;
      print("Move my position : ${direction.name}");
      for (var i = 0; x > i; i++) {
        arrowX += "▶️ ";
      }
      print("$arrowX 👾");
      arrowX = "";
    }
    if (x < posX) {
      direction = Direction.west;
      print("Move my position : ${direction.name}");
      for (var i = 0; x > i; i++) {
        arrowX += " ◀️";
      }
      print("👾 $arrowX");
      arrowX = "";
    }
    posX = x;

    if (y > posY) {
      direction = Direction.north;
      print("Move my position : ${direction.name}");
      print("👾");
      for (var i = 0; y > i; i++) {
        print("🔼");
      }
    }
    if (y < posY) {
      direction = Direction.south;
      print("Move my position : ${direction.name}");
      for (var i = 0; posY - y > i; i++) {
        print("🔽");
      }
      print("👾");
    }
    posY = y;
    print("End y : $posY");
    getMyPosition();
  }

  ///@ToString position
  void getMyPosition() {
    print("🏁 Vroum Vroum, je suis situé ici : (x: $posX , y: $posY) 🏁");
    print("______________________________________");
  }
}
