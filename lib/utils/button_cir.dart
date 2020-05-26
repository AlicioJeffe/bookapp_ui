import 'package:flutter/material.dart';

class ButtonCircular extends StatelessWidget {
  final String txt;
  final Function function;
  final Icon icon;
  final Color color;
  final bool show;
  final double txtsize;

  ButtonCircular(this.txt, this.function,
      {this.show = false,
      this.icon,
      this.color = Colors.lightBlueAccent,
      this.txtsize = 20.0});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      color: Color.fromRGBO(82, 209, 141, 1),
      onPressed: function,
      child: Center(
        child: ListTile(
          title: Center(
            child: Text(
              txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: txtsize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          trailing: show == false
              ? icon
              : CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
        ),
      ),
    );
  }
}
