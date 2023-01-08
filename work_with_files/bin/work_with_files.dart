import 'dart:io';

void main(List<String> arguments) {
  var file = File('text.txt');

  file.writeAsStringSync("hello world");
  file.writeAsStringSync("\n,from Montenegro", mode: FileMode.append);
  print(file.readAsStringSync());
}
