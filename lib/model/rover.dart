class Rover {
  int posX;
  int posY;

  Rover({this.posX = 0, this.posY = 0});

  ///Update Rover position
  void setPositionRover({required int x, required int y}) {
    posX = x;
    posY = y;
  }

  ///@ToString position
  void getMyPosition() {
    print("Vroum Vroum, je suis situé ici : (x: $posX , y: $posY)");
  }
}
