
void printPartOfWord(String str, int startIx, int endIx) {
  if (startIx < 0 || endIx < 0 || endIx < startIx) {
    System.err.printf("ERROR: printPartOfWord(): %d to %d from %s\n", startIx, endIx, str);
    return;
  }
  println(str.substring(startIx, endIx));
}

void setup() {
  String str = "København";
  printPartOfWord(str, 0, 3);
  printPartOfWord(str, str.length()-4, str.length());

}
