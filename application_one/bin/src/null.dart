void nullDescr(List<String> arguments) {
  //! null
  List<int> numbers = [for (var i = 0; i <= 99; i++) i];
  List<int> numOn5 = [];
  for (var i = 0; i <= numbers.length - 1; i++) {
    if (i % 5 == 0 && i > 0) numOn5.add(i);
  }
  // print(numbers);
  // print(numOn5);
  List<int> example1 = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  List<int> reverse = [
    for (var i = example1.length - 1; i >= 0; i--) example1[i]
  ];
  // print(example1.length);
  // print(reverse);
  int sum = 0;
  for (var value in reverse) sum += value;
  // print(sum);
  // delete dublicate
  List<int> values = [1, 3, 4, 1, 4, 5, 7, 3, 8, 5];
  List unique = Set.from(values).toList();
  // print(unique);
  // show index and element
  List<int> random = [4, 5, 6, 7, 2, 1, 2, 3, 4];
  Map randomMap = {};
  for (var i = 0; i < random.length; i++) {
    randomMap.addAll({i: random[i]});
  }
  // print(randomMap);
}
