

void setup() {
  ArrayList<Integer> ial = new ArrayList<Integer>();
  ArrayList<String> sal = new ArrayList<String>();
  ArrayList<Boolean> bal = new ArrayList<Boolean>();

  ial.add(3);
  ial.add(2);
  ial.add(8);

  sal.add("One");
  sal.add("Two");
  sal.add("Three");

  bal.add(true);
  bal.add(true);
  bal.add(false);

  printStrings(sal);
  println(sum(ial));
  println(avg(ial));
}
void printStrings(ArrayList<String> al) {
  for (String s : al)
    println(s);
}

int sum(ArrayList<Integer> al) {
  int sum = 0;
  for (Integer i : al)
    sum += (int)i;
  return sum;
}

float avg(ArrayList<Integer> al) {
  int sum = 0;
  for (Integer i : al)
    sum += (int)i;
  return (float)sum/(float)al.size();
}
