import 'dart:math';

double add(double a, double b) => _add(a, b);
double sub(double a, double b) => a - b;
double div(double a, double b) => a / b;
double mul(double a, double b) => a * b;
double pow2(double a) => a * a;
double powN(double a, double n) => pow(a, n).toDouble();

final _add = (a, b) => a + b; // can't export this statement
