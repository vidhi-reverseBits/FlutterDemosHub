
import 'package:flutter_demo/dart_language/datatype_demo.dart';
import 'package:flutter_demo/dart_language/variable_demo.dart';

import 'custom_library_demo.dart';
import 'metadata_demo.dart';
import 'operator_demo.dart';

void allDartDemos() {
  checkVariables();
  checkOperators();
  doSomething();
  print("Custom library: ${add(5, 7)}");
  checkAllDatatypes();
}