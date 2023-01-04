import 'dart:io';

void ifElseExample(List<String> arguments) {
  final input = stdin.readLineSync() ?? "";
  final num = int.parse(input);

  if (num >= 18) {
    print("adult");
  } else if (num < 18) {
    print("not an anult");
  }
}
