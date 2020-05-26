import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bookapp_ui/utils/button.dart';
import 'package:bookapp_ui/utils/text.dart';

final Color colorprimary = Color.fromRGBO(82, 209, 141, 1);

messageDialog({
  BuildContext context,
  String message,
  IconData icon,
  Function okFunction,
  bool loading = false,
  String txtbutton = "Ok",
}) {
  showDialog(
      context: context,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 2.500000000000001, sigmaY: 2.500000000000001),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10)
                          ]),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Center(
                                              child: Icon(
                                            icon,
                                            color: colorprimary,
                                            size: 70,
                                          )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text(
                                          message ?? "",
                                          style: TextStyle(
                                            fontFamily: "Gotb",
                                            color: colorprimary,
                                            fontSize: 22.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        width: 150,
                                        child: Button(
                                          txtbutton,
                                          okFunction,
                                          txtsize: 22.0,
                                        ),
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.grey,
                                  size: 22,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        );
      });
}

messageDialogError(
    {BuildContext context,
    String message,
    IconData icon,
    Function okFunction,
    bool loading = false}) {
  showDialog(
      context: context,
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                color: Colors.white.withOpacity(.3),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 2.500000000000001, sigmaY: 2.500000000000001),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.2),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 10)
                          ]),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Center(
                                              child: Icon(
                                            icon,
                                            color: Colors.red,
                                            size: 70,
                                          )),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Center(
                                        child: Text(
                                          message ?? "",
                                          style: TextStyle(
                                            fontFamily: "Gotb",
                                            color: Colors.red,
                                            fontSize: 22.0,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      loading
                                          ? Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            )
                                          : Container(
                                              width: 100,
                                              child: Button(
                                                "OK",
                                                okFunction,
                                                txtsize: 22.0,
                                                color: Colors.red,
                                                cor: 2,
                                              ),
                                            ),
                                    ],
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  shape: BoxShape.circle),
                              child: Center(
                                  child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.grey,
                                  size: 22,
                                ),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        );
      });
}
