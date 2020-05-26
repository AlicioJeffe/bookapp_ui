import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  String txt;
  bool senha;
  TextInputType keyboardType;
  FormFieldValidator<String> validator;
  TextEditingController controller;
  String initialValue;
  bool border;
  int maxLines;
  TextInputAction textInputAction;
  ValueChanged<String> onFieldSubmitted;
  ValueChanged<String> onChanged; 
  Widget prefixIcon;
  TextForm(
    this.txt, {
    this.senha = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.controller,
    this.initialValue,
    this.border = false,
    this.textInputAction,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      cursorColor: Colors.pink,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      initialValue: initialValue,
      controller: controller,
      validator: validator,
      obscureText: senha,
      maxLines: maxLines,
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: Colors.pink, width: 1.0),
        ),
        enabledBorder: border == true
            ? OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12, width: 1.0),
              )
            : null,
        hintText: txt,
        focusColor: Colors.pink,
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(
          color: Colors.black26,
          fontSize: 14,
        ),
      ),
    );
  }
}
