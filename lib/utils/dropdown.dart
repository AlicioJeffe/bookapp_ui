import 'package:flutter/material.dart';

abstract class DropDownItem {
  String text();
}

class DropDown<T extends DropDownItem> extends StatefulWidget {
  State parent;
  List<T> itens = List();
  String text;
  T value;
  var callback;

  DropDown(this.itens, this.text, this.value, ValueChanged<T> this.callback);

  @override
  DropDownState createState() {
    return new DropDownState();
  }
}

class DropDownState<T extends DropDownItem> extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
        isExpanded: true,
        value: widget.value,
        items: items(),
        hint: Text(widget.text),
        onChanged: (newVal) {
    widget.callback(newVal);
        },
      );
  }

  items() {
    List<DropdownMenuItem<T>> list =
        widget.itens.map<DropdownMenuItem<T>>((val) {
      return DropdownMenuItem<T>(
        value: val,
        child: new Text(
          "${val.text()}",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
      );
    }).toList();

    return list;
  }
}
