Future<void> main() async {
  Future<int> sumEl(int a, int b) => Future.sync(() => a + b);

  final res1 = await sumEl(3, 4);
  final res2 = await sumEl(res1, 5);
  final res3 = await sumEl(res2, 6);

  print("$res1, $res2, $res3");
}
