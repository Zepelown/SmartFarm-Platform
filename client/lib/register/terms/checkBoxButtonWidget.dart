import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckBoxButtonWidget extends StatefulWidget {
  bool isChecked = false;

  CheckBoxButtonWidget({
    required this.isChecked,
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CheckBoxButtonWidgetState();
}

class _CheckBoxButtonWidgetState extends State<CheckBoxButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: widget.isChecked,
      onChanged: (bool? value) {
        setState(() {
          widget.isChecked = value!;
        });
      },
    );
  }
}
