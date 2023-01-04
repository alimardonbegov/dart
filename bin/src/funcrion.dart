Iterable<int> myGenerator(int n) sync* {
  var k = 0;
  while (k < n) {
    if (k % 4 == 0) {
      yield k;
    }
    k++;
  }
}

void functionDest(List<String> arguments) {
  var it1 = myGenerator(20);
  var result = <int>[];
  var result1 = it1.toList();
  for (var it in myGenerator(20)) {
    result.add(it);
  }

  print(result); // [0, 4, 8, 12, 16]
  print(result1); // [0, 4, 8, 12, 16]
}
