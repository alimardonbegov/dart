import 'src/my_calculator.dart' as calculator;
import 'src/string.dart' deferred as string;
import 'src/my_calculator.dart';
import 'package:dart_application_1/calculator.dart' as calculator2;

Future callLibrary(String a) async {
  await string.loadLibrary();
  // print(string.formula1(a));
}

void main(List<String> arguments) {
  final text = callLibrary("Ali");
  calculator2.mul(2, 49);
}


  // final result = calculator.add(2, 5);