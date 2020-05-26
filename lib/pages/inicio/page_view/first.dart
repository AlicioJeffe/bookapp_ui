import 'package:bookapp_ui/utils/text.dart';
import 'package:flutter/material.dart';

class FirstPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/img/book.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width / 2,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Aumente o seu conhecimento",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 210,
              child: Texto(
                "Aumente o seu conhecimento com os livros disponíveis para si 24/24.",
                center: true,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
