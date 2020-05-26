import 'package:bookapp_ui/pages/cadastro/cadastro_page.dart';
import 'package:bookapp_ui/pages/homepage/homepage_dart.dart';
import 'package:bookapp_ui/utils/button.dart';
import 'package:bookapp_ui/utils/nav.dart';
import 'package:bookapp_ui/utils/texformfield.dart';
import 'package:bookapp_ui/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      onTap: ()=>push(context, CadastroPage(),replace: true),
                      child: Texto(
                        "Cadastrar",
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Texto(
                    "Seja Bem Vindo",
                    fontWeight: FontWeight.bold,
                    size: 22,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Texto(
                    "Preencha os seus dados para continuar",
                    fontWeight: FontWeight.bold,
                    size: 16,
                  ),
                ),
                SizedBox(
                  height: 78,
                ),
                TextForm(
                  "E-mail",
                  prefixIcon: Icon(
                    FontAwesomeIcons.envelope,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextForm(
                  "Senha",
                  prefixIcon: Icon(
                    FontAwesomeIcons.lock,
                    color: Colors.pink,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 50,
                  child: Button(
                    "Entrar",
                    () {
                      push(context, HomePage(),replace: true);
                    },
                    color: Colors.pink,
                    cor: 1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
