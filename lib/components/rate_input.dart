library rate_input;
import 'dart:html' hide Timeline;
import 'package:basic_input/formatting.dart';
import 'package:logging/logging.dart';
import 'package:polymer/polymer.dart';

// custom <additional imports>
// end <additional imports>


final _logger = new Logger("rateInput");

@CustomTag("plus-rate-input")
class RateInput extends PolymerElement {

  num get rate => _rate;

  RateInput.created() : super.created() {
    _logger.fine('RateInput created sr => $shadowRoot');
  }

  @override
  void domReady() {
    super.domReady();
    _logger.fine('RateInput domReady with sr => $shadowRoot');
    // custom <RateInput domReady>
    // end <RateInput domReady>

  }

  @override
  void ready() {
    super.ready();
    _logger.fine('RateInput ready with sr => $shadowRoot');
    // custom <RateInput created>
    // end <RateInput created>

    // custom <RateInput ready>
    // end <RateInput ready>

  }

  @override
  void attached() {
    super.attached();
    _logger.fine('RateInput attached with sr => $shadowRoot');
    assert(shadowRoot != null);
    // custom <RateInput attached>
    // end <RateInput attached>

  }



  // custom <class RateInput>
  // end <class RateInput>
  InputElement _rateElement;
  num _rate;
}




// custom <rate_input>
// end <rate_input>
