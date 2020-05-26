import 'package:bookapp_ui/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      physics: ClampingScrollPhysics(),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                maxRadius: 60.0,
                backgroundImage: ExactAssetImage("assets/img/user.JPG"),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.userAlt,
                      color: Colors.pink,
                      size: 15  ,
                    ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Texto("Alício Jefferson",fontWeight: FontWeight.bold,size: 14,),
                    ),
                  ],
                ),
                  Column(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.pink,
                      size: 15  ,
                    ),
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Texto("914 179 688 / 935 106 453",fontWeight: FontWeight.bold,size: 14,),
                    ),
                  ],
                ),
              ],
            ),
           SizedBox(height: 70,),
          Texto("Informações",fontWeight: FontWeight.bold,size: 16,),
          Divider(thickness: 1.0,color: Colors.black.withOpacity(.5),),
          SizedBox(height: 10,),
          Texto("Meu livro ",fontWeight: FontWeight.bold,size: 16,),
          Divider(thickness: 1.0,color: Colors.black.withOpacity(.5),),
          SizedBox(height: 10,),
          Texto("Ajuda ",fontWeight: FontWeight.bold,size: 16,),
          Divider(thickness: 1.0,color: Colors.black.withOpacity(.5),),
          SizedBox(height: 10,),
          Texto("Feedback ",fontWeight: FontWeight.bold,size: 16,),
          ],
        ),
      ),
    );
  }
}
