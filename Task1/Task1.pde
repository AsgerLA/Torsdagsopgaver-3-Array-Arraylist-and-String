
int[] arr = {28, 230, 9, 310,72};

int getRandom() {
  return arr[(int)random(arr.length)];
}

void setup() {
  println(getRandom());
}
