void main(List<String> arguments) {
  //!FUTURE
  // print(1);
  // Future.delayed(Duration(seconds: 2)).then((value) => print(3));
  // print(2);
  // var variable1 = Future<Object?>.delayed(Duration(seconds: 2));
  // variable1.then((value) => print(4));
  // final f1 = Future.delayed(Duration(seconds: 5));
  // final f2 = Future.delayed(Duration(seconds: 7));
  // f1.whenComplete(() => print("f1"));
  // f2.whenComplete(() => print("f2"));
  // final f3 = Future.wait([f1, f2]);
  // f3.then((value) => print("f3"));

  //!Async await

  // int sum(int a, int b) => a + b;
  // final result = sum(2, 5);

  Future<int> sumEl(int a, int b) => Future.sync(() => a + b);

  final result = sumEl(3, 4).then((result1) {
    print(result1);
    final result2 = sumEl(result1, 5).then((result2) {
      print(result2);
      final result3 = sumEl(result1, result2).then((result3) {
        print(result3);
      });
    });
  });
}
