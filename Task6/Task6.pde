
int[][] board = new int[8][8];

final int SIDE_LEN = 40;
void setup() {
  //size(SIDE_LEN*8, SIDE_LEN*8);
  size(320, 320);
  for (int y = 0; y < board.length; y++) {
    for (int x = 0; x < board[y].length; x++) {
      board[x][y] = (x & 1) ^ (y & 1);
    }
  }

}
void draw() {
  for (int y = 0; y < board.length; y++) {
    for (int x = 0; x < board[y].length; x++) {
      if (board[x][y] == 0)
        fill(0);
      else
        fill(255);
      rect(x*SIDE_LEN, y*SIDE_LEN, SIDE_LEN, SIDE_LEN);
    }
  }
}
