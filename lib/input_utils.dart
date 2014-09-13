library basic_input.input_utils;

import 'package:observe/observe.dart';
import 'package:paper_elements/paper_input.dart';
import 'package:polymer/polymer.dart';
// custom <additional imports>
// end <additional imports>

/// Wraps a PaperInput with consistent API supporting required
abstract class CheckedInputField extends PolymerElement {

  /// Label/placeholder text
  @observable String placeholder = 'Enter amount';
  /// If true this is a requried field
  @observable bool required = true;
  String get error => _error;

  // custom <class CheckedInputField>

  CheckedInputField.created() : super.created();

  set error(String text) {
    _error = text;
    _input.jsElement.callMethod('setCustomValidity', [_error]);
  }

  bool get isValid =>
    error == null &&
    _input.inputValue != null &&
    (!required || _input.inputValue.length > 0);

  String get inputText => _input.inputValue;

  set inputText(String text) {
    _input.inputValue = text;
    //validateOnInput();
  }

  set input(PaperInput paperInput) => _input = paperInput;

  clear() => clearPaperInput(_input);

  @override
  void attached() {
    super.attached();
    _input.onInput.listen((var _) {
      error = validateOnInput();
    });
    _input.onBlur.listen((var _) {
      error = validateOnBlur();
    });
  }

  String validateOnInput();
  String validateOnBlur();

  // end <class CheckedInputField>
  PaperInput _input;
  String _error;
}

// custom <library input_utils>

clearPaperInput(PaperInput paperInput) =>
  (paperInput..inputValue = '')
      .querySelector('* /deep/ #input')
  ..focus()
  ..blur();

// end <library input_utils>
