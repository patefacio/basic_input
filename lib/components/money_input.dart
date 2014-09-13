library money_input;
import 'dart:html' hide Timeline;
import 'package:basic_input/formatting.dart';
import 'package:basic_input/input_utils.dart';
import 'package:logging/logging.dart';
import 'package:polymer/polymer.dart';

// custom <additional imports>

import 'package:paper_elements/paper_input.dart';

// end <additional imports>


final _logger = new Logger("moneyInput");

@CustomTag("plus-money-input")
class MoneyInput extends CheckedInputField {

  num get amount => _amount;

  MoneyInput.created() : super.created() {
    _logger.fine('MoneyInput created sr => $shadowRoot');
    // custom <MoneyInput created>
    // end <MoneyInput created>

  }

  @override
  void domReady() {
    super.domReady();
    _logger.fine('MoneyInput domReady with sr => $shadowRoot');
    // custom <MoneyInput domReady>
    // end <MoneyInput domReady>

  }

  @override
  void ready() {
    super.ready();
    _logger.fine('MoneyInput ready with sr => $shadowRoot');
    // custom <MoneyInput ready>
    // end <MoneyInput ready>

  }

  @override
  void attached() {
    // custom <MoneyInput pre-attached>
    input = $['money-input'];
    // end <MoneyInput pre-attached>

    super.attached();
    _logger.fine('MoneyInput attached with sr => $shadowRoot');
    assert(shadowRoot != null);
    // custom <MoneyInput attached>

    placeholder = attributes['placeholder'];

    // end <MoneyInput attached>

  }



  // custom <class MoneyInput>

  /*
  void blurHandler(Event e) {
    _amount = pullNum(inputText);
    if(_amount != null) {
      inputText = moneyFormat(_amount, false);
    }
  }
  */

  @override
  String validateOnInput() {
    final txt = inputText;
    _amount = pullNum(txt);
    if(_amount == null) {
      return (inputText.length > 0)?
        "Please enter a dollar amount" :
        "This field is required";
    } else {
      inputText = moneyFormat(_amount, false);
      return null;
    }
  }

  @override
  String validateOnBlur() => error;

  /*
  void inputHandler(Event e) {
    _amount = pullNum(inputText);
    if(_amount == null) {
      error = (inputText.length > 0)?
        "Please enter a dollar amount" :
        "This field is required";
    } else {
      error = null;
      inputText = moneyFormat(_amount, false);
    }
  }
  */

  // end <class MoneyInput>
  num _amount = 0;
}




// custom <money_input>
// end <money_input>
