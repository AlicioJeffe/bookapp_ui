import 'package:bookapp_ui/pages/cadastro/cadastro_page.dart';
import 'package:bookapp_ui/pages/inicio/page_view/first.dart';
import 'package:bookapp_ui/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        bottomNavigationBar: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                child: Text(
                  "Entrar",
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
              InkWell(
                  onTap: () => push(context, CadastroPage(), replace: true),
                  child: Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ))
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Pular",
                      style: TextStyle(fontSize: 17,color: Colors.white),
                    )),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                child: PageIndicatorContainer(
                  child: PageView(
                    children: <Widget>[
                      FirstPageView(),
                      FirstPageView(),
                      FirstPageView()
                    ],
                  ),
                  length: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
