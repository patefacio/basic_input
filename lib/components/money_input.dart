library money_input;
import 'dart:html' hide Timeline;
import 'package:basic_input/formatting.dart';
import 'package:logging/logging.dart';
import 'package:polymer/polymer.dart';

// custom <additional imports>

import 'package:paper_elements/paper_input.dart';

// end <additional imports>


final _logger = new Logger("moneyInput");

@CustomTag("plus-money-input")
class MoneyInput extends PolymerElement {

  /// Label/placeholder text
  @observable String placeholder = 'Enter amount';
  /// If true this is a requried field
  @observable bool required = false;
  num get amount => _amount;

  MoneyInput.created() : super.created() {
    _logger.fine('MoneyInput created sr => $shadowRoot');
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
    // custom <MoneyInput created>
    // end <MoneyInput created>

    // custom <MoneyInput ready>
    // end <MoneyInput ready>

  }

  @override
  void attached() {
    super.attached();
    _logger.fine('MoneyInput attached with sr => $shadowRoot');
    assert(shadowRoot != null);
    // custom <MoneyInput attached>

    _amountInput = $['money-amount'] as PaperInput;
    final _placeholder = attributes['placeholder'];
    if(_placeholder != null) {
      placeholder = _placeholder;
    }

    // end <MoneyInput attached>

  }



  // custom <class MoneyInput>

  String get inputText => _amountInput.inputValue;

  void blurHandler(Event e) {
    _amount = pullNum(inputText);
    if(_amount != null) {
      _amountInput.inputValue = moneyFormat(_amount, false);
    }
  }

  void inputHandler(Event e) {
    _amount = pullNum(inputText);
    if(_amount == null) {
      final error = (inputText.length > 0)?
        "Please enter a dollar amount" :
        "This field is required";
      _amountInput.jsElement.callMethod('setCustomValidity', [error]);
    } else {
      _amountInput.jsElement.callMethod('setCustomValidity', []);
      _amountInput.inputValue = moneyFormat(_amount, false);
    }
  }

  // end <class MoneyInput>
  num _amount = 0;
  PaperInput _amountInput;
}




// custom <money_input>
// end <money_input>
