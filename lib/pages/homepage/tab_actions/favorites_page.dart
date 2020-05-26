import 'package:bookapp_ui/utils/button.dart';
import 'package:bookapp_ui/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 115,
                  height: 150,
                  child: Image.asset("assets/img/livro.jpg"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Texto(
                        "HTML & CSS",
                        fontWeight: FontWeight.bold,
                        size: 16,
                      ),
                    ),
                    Texto(
                      "Alício Jefferson",
                      size: 13,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: LinearPercentIndicator(
                        width: 200.0,
                        lineHeight: 3.0,
                        percent: 0.5,
                        backgroundColor: Colors.grey.withOpacity(.5),
                        progressColor: Colors.pink,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 35,
                      child: Button(
                        "Continuar a leitura",
                        () {},
                        color: Colors.black54,
                        cor: 2,
                        txtsize: 13.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Texto(
                    "Todos os livros(9)",
                    fontWeight: FontWeight.bold,
                    size: 17,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Texto("Ver todos"),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[],
                          ),
                          Column(
                            children: <Widget>[
                              SizedBox(
                                width: 115,
                                height: 150,
                                child: Image.asset("assets/img/livro.jpg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Texto(
                                  "HTML & CSS",
                                  fontWeight: FontWeight.bold,
                                  size: 16,
                                ),
                              ),
                              Texto(
                                "Alício Jefferson",
                                size: 13,
                              ),
                              Container(
                                child: LinearPercentIndicator(
                                  width: 100.0,
                                  lineHeight: 3.0,
                                  percent: 0.2,
                                  backgroundColor: Colors.grey.withOpacity(.5),
                                  progressColor: Colors.pink,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
