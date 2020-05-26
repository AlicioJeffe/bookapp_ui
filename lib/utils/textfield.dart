import 'package:flutter/material.dart';

textField({String labelText, bool border, TextEditingController controller,String Function() errorText,onChanged,TextInputType keyboardType,bool senha=false}) {
  return TextField(
    onChanged: onChanged,
    keyboardType:  keyboardType,
    obscureText:senha ,
    controller: controller,
    decoration: InputDecoration(
      
      errorText:  errorText == null ? null : errorText(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
      ),
      enabledBorder: border == true
          ? OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12, width: 1.0),
            )
          : null,
      hintText: labelText,
      labelStyle: TextStyle(color: Colors.black26, fontSize: 14),
    ),
  );
}
