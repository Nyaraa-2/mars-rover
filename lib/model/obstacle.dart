enum ObstacleName { GrosCaillou, PetitCaillou }

class Obstacle {
  final String nameObs;
  int positionX;
  int positionY;
  ObstacleName obstacleName;
  Obstacle(
      {this.nameObs = "",
      this.positionX = 5,
      this.positionY = 0,
      this.obstacleName = ObstacleName.GrosCaillou});

  void setPositionObstacle({required int x, required int y}) {
    positionX = x;
    positionY = y;

    print("🚩 Obstacle position : ${obstacleName.name} - position $x / $y");

    getMyPosition();
  }

  void getMyPosition() {
    print(
        "🏁 Obstacle détecté aux coordonnées suivante : (x: $positionX , y: $positionY) 🏁");
    print("______________________________________");
  }
}
