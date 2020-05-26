import 'package:bookapp_ui/pages/homepage/tab_actions/search_tab_actions/classic.dart';
import 'package:flutter/material.dart';

class Pesquisa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: SingleChildScrollView(
                      child: Column(
              children: <Widget>[
                TabBar(
                    isScrollable: true,
                    labelColor: Colors.pink,
                    unselectedLabelColor: Colors.black54,
                    indicatorColor: Colors.pink.withOpacity(.4),
                    tabs: [
                      Tab(
                        text: "Clássicos",
                      ),
                      Tab(
                        text: "História",
                      ),
                      Tab(
                        text: "Crime",
                      ),
                      Tab(
                        text: "Ciência",
                      ),
                      Tab(
                        text: "Fantasia",
                      ),
                    ]),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(children: [
                      ClassicPage(),
                      ClassicPage(),
                      ClassicPage(),
                      ClassicPage(),
                      ClassicPage(),
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
