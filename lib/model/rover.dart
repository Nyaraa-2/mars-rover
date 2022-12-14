enum Direction { north, south, east, west }

class Rover {
  int posX;
  int posY;
  Direction direction;
  Rover({this.posX = 0, this.posY = 0, this.direction = Direction.north});

  ///Update Rover position
  void setPositionRover({required int x, required int y}) {
    String arrowX = "";
    print("๐ฉ Initial position : ${direction.name} ๐ฉ");

    if (x > posX) {
      direction = Direction.east;
      print("Move my position : ${direction.name}");
      for (var i = 0; x > i; i++) {
        arrowX += "โถ๏ธ ";
      }
      print("$arrowX ๐พ");
      arrowX = "";
    }
    if (x < posX) {
      direction = Direction.west;
      print("Move my position : ${direction.name}");
      for (var i = 0; x > i; i++) {
        arrowX += " โ๏ธ";
      }
      print("๐พ $arrowX");
      arrowX = "";
    }
    posX = x;

    if (y > posY) {
      direction = Direction.north;
      print("Move my position : ${direction.name}");
      print("๐พ");
      for (var i = 0; y > i; i++) {
        print("๐ผ");
      }
    }
    if (y < posY) {
      direction = Direction.south;
      print("Move my position : ${direction.name}");
      for (var i = 0; posY - y > i; i++) {
        print("๐ฝ");
      }
      print("๐พ");
    }
    posY = y;
    getMyPosition();
  }

  ///@ToString position
  void getMyPosition() {
    print("๐ Vroum Vroum, je suis situรฉ ici : (x: $posX , y: $posY) ๐");
    print("______________________________________");
  }
}
