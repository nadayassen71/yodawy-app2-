import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Products extends StatelessWidget {
  final value;
  final String value2;

  Products({this.value, required this.value2});
  @override

  Widget build(BuildContext context) {

    return pr(value, value2);


  }
}
Scaffold pr(String x,String y)
{
  return Scaffold(
    appBar: AppBar(
centerTitle: true,
      title: Text(
        x,
        style: TextStyle(
            fontSize: 12, letterSpacing: 2, fontWeight: FontWeight.w500),
        textScaleFactor: 1.5,
      ),
      backgroundColor: Colors.lightBlue[400],
      actions: [
        Container(
          width: 60,
          height: 40,
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.white,
              child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  color: Colors.lightBlue[400],
                  onPressed: () {
                    //Navigator.of(context).pushNamed('cart');
                  })),
        )
      ],

      brightness: Brightness.light,
    ),
    body: ListView(
      children: [
           Container(
    color: Colors.lightBlue[400],
      height: 80,
      width: double.infinity,
      child: InkWell(
        onTap: (){},
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 4,
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              IconButton(
                  alignment: Alignment.centerLeft,
                  color: Colors.grey[400],
                  padding: EdgeInsets.only(left: 15),
                  icon: Icon(Icons.search),
                  onPressed: () {}),
              Text(
                "What are you looking for?",
                style: TextStyle(color: Colors.grey[600], fontSize: 17),
              ),
            ],
          ),
        ),
      ),
    ),
           item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),
        item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),
        item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),
        item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),item(y),
      ],
    ),
  );

}

InkWell item(String y) {
  return InkWell(
           child: Container(
             child: Card(
               child: Row(
                 children: [
                   Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8gKZenyumv-gIV32Dav_U7p89O6bcXHYHT-D3fADD4d8JR6FULUHofPlK3mJCVwZm_1k&usqp=CAU",height: 130,),
                    Container(
                      height: 130,

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Text(" Name of Product: "),
                         Padding(padding: EdgeInsets.only(top: 5)),
                         Text(" Type: "),
                         Padding(padding: EdgeInsets.only(top: 5)),
                         Text(" EGP "+y,style: TextStyle(color: Colors.lightBlue[400],fontWeight: FontWeight.bold),),
                         Padding(padding: EdgeInsets.only(top: 19)),
                         Container(
                           height: 30,
                           width: 100,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(
                             color: Colors.lightBlue,
                           )),
                           child: InkWell(
                             child: Container(alignment: Alignment.center,child: Text("ADD",style: TextStyle(color: Colors.lightBlue[400],),)),
                           ),
                         ),

                       ],
                   ),
                    ),
                 ],
               ),
             ),
           ),
         );
}