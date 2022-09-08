class Grid {
  final Map<int, List<int>> coordonnees = {
    //x         //y
    0: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    1: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    2: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    3: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    4: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    5: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    6: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    7: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    8: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    9: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    10: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
  };

  Grid();

  ///Get X abciss value
  int getAbcissValue(Grid grid, int x) {
    if (x > 10) {
      //2
      int newX = x % 10;
      //1
      return newX - 1;
    }
    if (x < 0) {
      //Passe la valeur en positif
      int moduloPositif = (x % 10) * -1;
      int result = 11 - moduloPositif;
      return result % 10;
    }

    return grid.coordonnees.keys.elementAt(x);
  }

  //Get Y ordinate value
  int getOrdinateValue(Grid grid, int x, int y) {
    getAbcissValue(grid, x);
    if (y > 10) {
      //2
      int newY = y % 10;
      //1
      return newY - 1;
    }

    if (y < 0) {
      //Passe la valeur en positif
      int moduloPositif = (y % 10) * -1;
      int result = 10 + moduloPositif;
      return result % 10;
    }
    return grid.coordonnees[0]!.elementAt(y);
  }
}
