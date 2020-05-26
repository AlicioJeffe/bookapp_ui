import 'package:bookapp_ui/pages/homepage/tab_actions/favorites_page.dart';
import 'package:bookapp_ui/pages/homepage/tab_actions/profile_page.dart';
import 'package:bookapp_ui/pages/homepage/tab_actions/search.dart';
import 'package:bookapp_ui/utils/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Book App";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TabBar( 
              onTap: (i){
                if(i==0){
                  setState(() {
                    title = "Book App";
                  });
                }
                if(i==1){
                  setState(() {
                  title = "Pesquise";
                  });
                }

                if(i==2){
                  setState(() {
                    title ="Meus favoritos";
                  });
                }
                
                if(i==3){
                  setState(() {
                    title ="Pefil";
                  });
                }
              },
              unselectedLabelColor: Colors.black54, 
              indicatorColor: Colors.white,
              labelColor: Colors.pink,
                tabs: <Widget>[
                  Tab(icon: Icon(FontAwesomeIcons.home,size: 19,),),
                  Tab(icon: Icon(FontAwesomeIcons.search,size: 19,),),
                  Tab(icon: Icon(FontAwesomeIcons.bookmark,size: 19,),),
                  Tab(icon: Icon(FontAwesomeIcons.userCircle,size: 19,),),
                ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Texto(
              title,
              size: 25,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
            actions: <Widget>[
              Icon(
                FontAwesomeIcons.search,
                color: Colors.black,
                size: 18,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18),
              ),
              Icon(
                Icons.category,
                color: Colors.black,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 18),
              ),
            ],
          ),
          body: _body(context),
        ),
      ),
    );
  }

  _body(context) {
    return TabBarView(
      children: <Widget>[
        SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Texto(
                  "Livros em destaque",
                  fontWeight: FontWeight.bold,
                  size: 19,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 500),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(),
                          child: Image.asset("assets/img/book2.jpg"),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                Texto(
                  "Novos lançamentos",
                  fontWeight: FontWeight.bold,
                  size: 19,
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context, i) {
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
        ),
        Pesquisa(),
        Favorites(), 
        ProfilePage()
      ],
    );
  }
}
