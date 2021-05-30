import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Start:');
  var input = stdin.readLineSync();
  var start = double.tryParse(input!);
  if (start == null) {
    stdout.writeln('Start is null');
    return;
  }
  stdout.writeln('End:');
  input = stdin.readLineSync();
  var end = double.tryParse(input!);
  if (end == null) {
    stdout.writeln('End is null');
    return;
  }
  stdout.writeln('Steps:');
  input = stdin.readLineSync();
  var steps = double.tryParse(input!);
  if (steps == null) {
    stdout.writeln('Steps is null');
    return;
  }
  steps++;
  var valueBetween = end - start;
  var valuePerStep = valueBetween / steps;
  stdout.writeln('OUTPUT:\n');
  var temp = start;
  for (var i = 0; i < steps; i++) {
    stdout.writeln(format(temp));
    temp += valuePerStep;
  }
  stdout.writeln(format(end));
}

String format(double n) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 2);
}
