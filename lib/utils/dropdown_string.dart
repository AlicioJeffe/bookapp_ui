import 'package:flutter/material.dart';

class DropDownString extends StatefulWidget {
  State parent;
  List<String> itens = List();
  String text;
  String value;
  var callback;

  DropDownString(
      this.itens, this.text, this.value, ValueChanged<String> this.callback);

  @override
  DropDownStringState createState() {
    return new DropDownStringState();
  }
}

class DropDownStringState extends State<DropDownString> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.value,
      isExpanded: true,
      items: widget.itens.map((String s) {
        return new DropdownMenuItem<String>(
          value: s,
          child: new Text(
            s,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        );
      }).toList(),
      hint: Text(
        widget.text,
      ),
      onChanged: (newVal) {
        widget.callback(newVal);
      },
    );
  }
}
