library num_with_units_input;
import 'dart:html' hide Timeline;
import 'package:basic_input/formatting.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:polymer/polymer.dart';

// custom <additional imports>
// end <additional imports>


final _logger = new Logger("numWithUnitsInput");

@CustomTag("plus-num-with-units-input")
class NumWithUnitsInput extends PolymerElement {

  String units;
  num get number => _number;

  NumWithUnitsInput.created() : super.created() {
    _logger.fine('NumWithUnitsInput created sr => $shadowRoot');
  }

  @override
  void domReady() {
    super.domReady();
    _logger.fine('NumWithUnitsInput domReady with sr => $shadowRoot');
    // custom <NumWithUnitsInput domReady>
    // end <NumWithUnitsInput domReady>

  }

  @override
  void ready() {
    super.ready();
    _logger.fine('NumWithUnitsInput ready with sr => $shadowRoot');
    // custom <NumWithUnitsInput created>
    // end <NumWithUnitsInput created>

    // custom <NumWithUnitsInput ready>
    // end <NumWithUnitsInput ready>

  }

  @override
  void attached() {
    super.attached();
    _logger.fine('NumWithUnitsInput attached with sr => $shadowRoot');
    assert(shadowRoot != null);
    // custom <NumWithUnitsInput attached>
    // end <NumWithUnitsInput attached>

  }



  // custom <class NumWithUnitsInput>
  // end <class NumWithUnitsInput>
  InputElement _valueElement;
  NumberFormat _numberFormat;
  num _number;
}




// custom <num_with_units_input>
// end <num_with_units_input>
