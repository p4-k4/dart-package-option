import 'package:option/option.dart';

void main() {
  final result = divide(10, 2);

  switch (result) {
    case Some(value: var x):
      print('Result: $x');
    case None():
      print('Cannot divide by zero');
  }
}

Option<double> divide(int a, int b) {
  if (b == 0) return const None();
  return Some(a / b);
}
