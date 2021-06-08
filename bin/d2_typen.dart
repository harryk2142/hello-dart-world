void main(List<String> arguments) {
  print('Var\t\t\truntimeType\n');
  var a = false, b = 1, c = .5, d = 'D', e = 'Test';
  printVar(a);
  printVar(b);
  printVar(c);
  printVar(d);
  printVar(e);

  num numA = 12;
  num numB = 12.5;
  printVar(numA);
  printVar(numB);

  var listeA = ['a', 1, true];
  var listeB = ['a', 'b', 'c'];
  var listeC = [1, 2, 3];
  var listeD = [.01, .02];
  var listeE = [.01, 2];

  printList(listeA);
  printList(listeB);
  printList(listeC);
  printList(listeD);
  printList(listeE);

  dynamic dynamicVar = false;
  printVar(dynamicVar);
  dynamicVar = 'abc';
  printVar(dynamicVar);
  dynamicVar = 123;
  printVar(dynamicVar);
}

void printVar(Object a) {
  print('$a\t\t\t${a.runtimeType}');
}

void printList(Object a) {
  print('$a\t\t${a.runtimeType}');
}
