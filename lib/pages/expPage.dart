import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class expPage extends StatelessWidget {
  final value;

  expPage({this.value,});
  @override

  Widget build(BuildContext context) {
    return Details(value);


  }
}
Scaffold Details(String x)
{
  return Scaffold(
   appBar: AppBar(
     
        centerTitle: true,
      title: Text(
        x,
        style: TextStyle(
            fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.w500),
        textScaleFactor: 1.5,
      ),
      backgroundColor: Colors.lightBlue[400],

    ),
    body:ListView(
      children: [Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Padding(padding: EdgeInsets.only(left: 100)),

          Container(
            alignment: Alignment.center,
            height: 300,
            width: 500,
            child: InkWell(

              onTap: (){},
              child: Card(

                child: Column(
                  children: [
                    Text("Upload Claim Form                              ",style: TextStyle(fontSize: 17,),),
                    Text("Upload claim form to order your medication",style: TextStyle(color: Colors.grey),),
                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq9wKvmDZpYSgX_KfB2vYnB-cjogNXtj4mQhWnN0iPxlbF-dim7yyUXEB8sgSoGkRGN9E&usqp=CAU",
                    width: 300,),
                    Container(
                      width: 250,
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.lightBlue[50],
                      child: InkWell(
                        onTap: (){},
                        child: Text("UPLOAD",style: TextStyle(color: Colors.lightBlue[400],fontSize: 19,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            alignment: Alignment.center,
            height: 300,
            width: 500,
            child: InkWell(

              onTap: (){},
              child: Card(

                child: Column(
                  children: [
                    Text("Order Monthly Medication                            ",style: TextStyle(fontSize: 17,),),
                    Text("Tap here to request monthly medication                    ",style: TextStyle(color: Colors.grey),),
                    Image.network("https://www.unodc.org/images/middleeastandnorthafrica/2020/COVID-19/Access-medicines-COVID-19_1200x800px.jpg",
                      width: 300,),
                    Padding(padding: EdgeInsets.only(top: 5)),
                    Container(
                      width: 250,
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.lightBlue[50],
                      child: InkWell(
                        onTap: (){},
                        child: Text("ORDER",style: TextStyle(color: Colors.lightBlue[400],fontSize: 19,fontWeight: FontWeight.bold),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],

    ),
  );
}