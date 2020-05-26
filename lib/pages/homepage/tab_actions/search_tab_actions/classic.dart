import 'package:bookapp_ui/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Texto(
                "Mais procurados",
                fontWeight: FontWeight.bold,
                size: 15,
              ),
            ),
            SizedBox(
              height: 15,
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
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  width: 90,
                                  height: 20,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.black54,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    })),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Texto(
                "Interessantes",
                fontWeight: FontWeight.bold,
                size: 15,
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
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  width: 90,
                                  height: 20,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.star,
                                        size: 15,
                                        color: Colors.black54,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
