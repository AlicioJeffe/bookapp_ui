import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final Function function;
  final Icon icon;
  final Color color;
  final bool show;
  final txtsize;
final int cor;
  Button(this.txt, this.function,
      {this.show = false,
      this.icon,
      this.color = Colors.greenAccent,
      this.txtsize = 20.0,this.cor=0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: RaisedButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: cor==0?Color.fromRGBO(82,209,141,1):color,
          onPressed: function,
          child: Text(
              txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: txtsize,
              ),
            ),
        ),
      ),
    );
  }
}
