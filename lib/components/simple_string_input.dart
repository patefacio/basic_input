library simple_string_input;
import 'dart:html' hide Timeline;
import 'package:basic_input/formatting.dart';
import 'package:logging/logging.dart';
import 'package:paper_elements/paper_input.dart';
import 'package:polymer/polymer.dart';

// custom <additional imports>
// end <additional imports>


final _logger = new Logger("simpleStringInput");

@CustomTag("plus-simple-string-input")
class SimpleStringInput extends PolymerElement {

  /// Label/placeholder text
  @observable String placeholder = 'Enter amount';
  /// If true this is a requried field
  @observable bool required = false;
  StringValueConstraint valueConstraint;

  SimpleStringInput.created() : super.created() {
    _logger.fine('SimpleStringInput created sr => $shadowRoot');
  }

  @override
  void domReady() {
    super.domReady();
    _logger.fine('SimpleStringInput domReady with sr => $shadowRoot');
    // custom <SimpleStringInput domReady>
    // end <SimpleStringInput domReady>

  }

  @override
  void ready() {
    super.ready();
    _logger.fine('SimpleStringInput ready with sr => $shadowRoot');
    // custom <SimpleStringInput created>
    // end <SimpleStringInput created>

    // custom <SimpleStringInput ready>
    // end <SimpleStringInput ready>

  }

  @override
  void attached() {
    super.attached();
    _logger.fine('SimpleStringInput attached with sr => $shadowRoot');
    assert(shadowRoot != null);
    // custom <SimpleStringInput attached>

    _input = $['simple-string'] as PaperInput;
    final _placeholder = attributes['placeholder'];
    if(_placeholder != null) {
      placeholder = _placeholder;
    }

    // end <SimpleStringInput attached>

  }



  // custom <class SimpleStringInput>

  String get inputText => _input.inputValue;

  void inputHandler(Event e) {
    if(valueConstraint != null) {
      final error = valueConstraint(inputText);
      _input.jsElement.callMethod('setCustomValidity',
          error == null? [] : [error]);
    }
  }


  // end <class SimpleStringInput>
  PaperInput _input;
}




// custom <simple_string_input>
// end <simple_string_input>
