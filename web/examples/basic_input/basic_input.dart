import 'package:polymer/polymer.dart';
import 'package:logging/logging.dart';
// custom <additional imports>

import 'dart:html';
import 'package:basic_input/components/money_input.dart';
import 'package:basic_input/components/simple_string_input.dart';

// end <additional imports>


main() {
  Logger.root.onRecord.listen((LogRecord r) =>
    print("${r.loggerName} [${r.level}]:\t${r.message}"));
  Logger.root.level = Level.FINEST;
  initPolymer().run(() {
    Polymer.onReady.then((var _) {
// custom <basicInput main>

  final mi = (document
    .querySelector('#sample-money-input') as MoneyInput)
    ..placeholder = 'Foobar';

  final si = (document
    .querySelector('#simple-string-input') as SimpleStringInput)
    ..placeholder = 'Enter the simple string'
    ..valueConstraint = (String s) => s == 'complex' ? 'Complex is not simple' : null;


// end <basicInput main>

    });
  });
}
