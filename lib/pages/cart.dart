import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';



class cart extends StatefulWidget {
  State<StatefulWidget> createState() {
    return cartState();
  }
}

class cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart",),centerTitle: true,backgroundColor: Colors.lightBlue[400],),
      body:Container(
        alignment: Alignment.center,
        child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-4aS3LghBjPKEax5sCKZpwXDx-1nwsEI13cdUjh2So8zghmPsGxFN9KBkHCLm9Q5MEzY&usqp=CAU"),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text("Your cart is empty!", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold,),),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text("Explore Yodawy and start shopping now ", style: TextStyle(color: Colors.grey,),),
                    Padding(padding: EdgeInsets.only(top: 40)),
                   Container(
                     width: 260,
                      height: 30,
                      color: Colors.yellow[800],

                      child:  InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed('home');
                        },
                        child: Container(alignment: Alignment.center,child: Text("Explore Yodawy",style: TextStyle(fontSize: 17),)),
                      ),
                    )


                  ],
                ) ,



        ),
      ),

    );
  }
}