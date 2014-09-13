library date_input;
import 'dart:html' hide Timeline;
import 'package:basic_input/formatting.dart';
import 'package:basic_input/input_utils.dart';
import 'package:logging/logging.dart';
import 'package:polymer/polymer.dart';

// custom <additional imports>
// end <additional imports>


final _logger = new Logger("dateInput");

@CustomTag("plus-date-input")
class DateInput extends PolymerElement {

  DateTime get date => _date;

  DateInput.created() : super.created() {
    _logger.fine('DateInput created sr => $shadowRoot');
    // custom <DateInput created>
    // end <DateInput created>

  }

  @override
  void domReady() {
    super.domReady();
    _logger.fine('DateInput domReady with sr => $shadowRoot');
    // custom <DateInput domReady>
    // end <DateInput domReady>

  }

  @override
  void ready() {
    super.ready();
    _logger.fine('DateInput ready with sr => $shadowRoot');
    // custom <DateInput ready>
    // end <DateInput ready>

  }

  @override
  void attached() {
    // custom <DateInput pre-attached>
    // end <DateInput pre-attached>

    super.attached();
    _logger.fine('DateInput attached with sr => $shadowRoot');
    assert(shadowRoot != null);
    // custom <DateInput attached>
    // end <DateInput attached>

  }



  // custom <class DateInput>
  // end <class DateInput>
  InputElement _dateElement;
  DateTime _date;
}




// custom <date_input>
// end <date_input>
