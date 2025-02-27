


int[] sortArr(int[] arr) {
  int[] ret;
  int i, j;
  int tmp;

  ret = new int[arr.length];
  System.arraycopy(arr, 0, ret, 0, arr.length);

  for (i = 0; i < arr.length; i++) {
    for (j = 0; j < arr.length-1; j++) {
      if (ret[j] > ret[j+1]) {
        tmp = ret[j];
        ret[j] = ret[j+1];
        ret[j+1] = tmp;
      }
    }
  }

  return ret;
}

void setup() {
  long t1, t2;

  int i;
  int[] arr = new int[10];
  int[] ret;

  for (i = 0; i < arr.length; i++)
    arr[i] = (int)random(arr.length);

  t1 = System.nanoTime();
  ret = sortArr(arr);
  t2 = System.nanoTime();

  for (i = 0; i < arr.length; i++)
    print(arr[i] + " ");
  println();

  for (i = 0; i < ret.length; i++)
    print(ret[i] + " ");
  println();

  println("took " + (float)((float)(t2 - t1) / 1000000.0f) + " ms");
}
