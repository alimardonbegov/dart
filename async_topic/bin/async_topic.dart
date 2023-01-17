void main(List<String> arguments) {
  print(1);
  Future.delayed(Duration(seconds: 2)).then((value) => print(3));
  print(2);
  var variable1 = Future<Object?>.delayed(Duration(seconds: 2));
  variable1.then((value) => print(4));

  final f1 = Future.delayed(Duration(seconds: 5));
  final f2 = Future.delayed(Duration(seconds: 7));
  f1.whenComplete(() => print("f1"));
  f2.whenComplete(() => print("f2"));

  final f3 = Future.wait([f1, f2]);
  f3.then((value) => print("f3"));
}
