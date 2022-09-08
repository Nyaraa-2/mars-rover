class Rover {
  String nom;
  int posX;
  int posY;

  Rover(this.nom, {this.posX = 0, this.posY = 0});

  void setPositionRover({required int x, required int y}) {
    posX = x;
    posY = y;
  }

  void getMyPosition() {
    print("Vroum Vroum, je suis situé ici : (x: $posX , y: $posY)");
  }
}
