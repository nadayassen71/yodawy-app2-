import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/products.dart';
class CoView extends StatelessWidget {
  final value;
  final String value2;
  final String value3;
  final String value4;
  final String value5;
  final String value6;
  final String value7;
  final String value8;
  final String value9;
  final String value10;

  CoView({this.value, required this.value2, required this.value3, required this.value4, required this.value5, required this.value6, required this.value7, required this.value8, required this.value9,required this.value10});
  @override

  Widget build(BuildContext context) {

    return coCrady(value, value2,value3,value4,value5,value6,value7,value8,value9,value10,context);


  }
}
  Scaffold coCrady(String a,String b,String c,String d,String e,String f,String g,String h,String k,String l,BuildContext context) {
    return Scaffold(
    appBar: AppBar(centerTitle: true,title: Text(a),backgroundColor: Colors.lightBlue[400],),
    body: ListView(
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        Container(
          child: Column(
            children: [
              cardy(b,c,d,context),
              cardy(e, f,g,context),
              cardy( h,k,l,context),
            ],

          ),
        ),
      ],
    ),
  );
  }

  Container cardy(String x, String y,String a,BuildContext context) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: (){
              var route = new MaterialPageRoute(
                builder: (BuildContext context) =>
                new Products(
                  value:a,
                  value2:"500",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Card(child: Image.network(
                x,
                width: 190,
                height: 150)),
          ),
          Padding(padding: EdgeInsets.only(left: 10)),
          InkWell(
            onTap: (){
              var route = new MaterialPageRoute(
                builder: (BuildContext context) =>
                new Products(
                  value:a,
                  value2:"250",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Card(
                child: Image.network(
                    y,
                    width: 190,
                    height: 150
                )),
          ),


        ],
      ),
    );

  }

