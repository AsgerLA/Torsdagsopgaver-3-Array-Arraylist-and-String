

String[] names = new String[5];
String[] hits  = new String[5];

int i;

for (i = 0; i < 5; i++) {
  names[i] = new String("name"+i);
  hits[i]  = new String("hit"+i);
}

for (i = 0; i < 5; i++) {
  print((i+1) + ". ");
  if (i < names.length)
    print(names[i]);
  if (i < hits.length)
    print(" : \"" + hits[i] + "\"");
  println();
}
