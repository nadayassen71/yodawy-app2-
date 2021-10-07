import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/covidView.dart';
import 'package:yoadwi/pages/products.dart';

class MC extends StatelessWidget {
  final value;
  final String value2,a1,a2,a3,a4,a5,b,b1,b2,b3,b4,b5,c,c1,c2,c3,c4,c5,d,d1,d2,d3,d4,d5,e,e1,e2,e3;

  MC ({this.value, required this.value2,required this.a1,required this.a2,required this.a3,required this.a4,required this.a5,required this.b,required this.b1,required this.b2
    ,required this.b3,required this.b4,required this.b5,required this.c,required this.c1,required this.c2,required this.c3,required this.c4,required this.c5
    ,required this.d,required this.d1,required this.d2,required this.d3,required this.d4,required this.d5,required this.e,required this.e1
    ,required this.e2,required this.e3});
  @override


  Widget build(BuildContext context) {
    var listt= {
      'ValueAppbar':value,
      'ValuePr':value2,
      'value2': a1,
      'value3': a2,
      'value4': a3,
      'value5': a4,
      'value6': a5,
      'value7': b,
      'value8': b1,
      'value9': b2,
      'value10':b3,
      'p1':b4,
      'p1n':b5,
      'p2':c,
      'p2n':c1,
      'p3':c2,
      'p3n':c3,
      'p4': c4,
      'p4n':c5,
      'p5':d,
      'p5n':d1,
      'p6':d2,
      'p6n':d3,
      'l1':d4,
      'l2':d5,
      'l3':e,
      'l4':e1,
      'l5':e2,
      'l6':e3,
    };
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listt['ValueAppbar'].toString(),
          style: TextStyle(
              fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.w500),
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
                      Navigator.of(context).pushNamed('cart');
                    })),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.lightBlue[400],
            height: 80,
            width: double.infinity,
            child: InkWell(
              onTap: () {},
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
          Padding(padding: EdgeInsets.only(top: 20)),
          //top pick
          Container(
            child: Row(
              children: [
                Text(
                  "Browse by Brand",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 150)),
                InkWell(
                    onTap: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext context) => new CoView(
                          value:"Covid Products",
                          value2: listt['value2'].toString(),
                          value3: listt['value3'].toString(),
                          value4: listt['value4'].toString(),
                          value5: listt['value5'].toString(),
                          value6: listt['value6'].toString(),
                          value7: listt['value7'].toString(),
                          value8: listt['value8'].toString(),
                          value9: listt['value9'].toString(),
                          value10: listt['value10'].toString(),
                        ),
                      );
                      Navigator.of(context).push(route);
                    },
                    child: Text(
                      "View All",
                      style:
                      TextStyle(fontSize: 20, color: Colors.lightBlue[400]),
                    )
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            height: 100.0,
            width: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(left: 5)),
                list(context,listt['l1'].toString(), "500",listt['value2'].toString()),
                Padding(padding: EdgeInsets.only(left: 1)),
                list(context,listt['l2'].toString(),"400",listt['value3'].toString()),
                Padding(padding: EdgeInsets.only(left: 10)),
                list(context,listt['l3'].toString(),"400",listt['value5'].toString()),
                Padding(padding: EdgeInsets.only(left: 10)),
                list(context,listt['l4'].toString(),"370",listt['value6'].toString()),
                Padding(padding: EdgeInsets.only(left: 10)),
                list(context,listt['l5'].toString(),"600",listt['value8'].toString()),
                Padding(padding: EdgeInsets.only(left: 10)),
                list(context,listt['l6'].toString(),"400",listt['value9'].toString()),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          //top pick
          Container(
            child: Row(
              children: [
                Text(
                  "Browse by Category",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          parts(context,listt['p1'].toString(),listt['p1n'].toString(),listt['p2'].toString(),listt['p2n'].toString()),
          Padding(padding: EdgeInsets.only(top: 10)),
          parts(context,listt['p3'].toString(),listt['p3n'].toString(),listt['p4'].toString(),listt['p4n'].toString()),
          Padding(padding: EdgeInsets.only(top: 10)),
          parts(context,listt['p5'].toString(),listt['p5n'].toString(),listt['p6'].toString(),listt['p6n'].toString()),



        ],
      ),
    );
  }

  InkWell list(BuildContext context,String a,String b,String c) {
    return InkWell(
      onTap: () {
        var route = new MaterialPageRoute(
          builder: (BuildContext context) => new Products(
            value:a ,
            value2: b,
          ),
        );
        Navigator.of(context).push(route);
      },
      child: Container(
        child: Image.network(
          c,
          width: 100,
        ),
      ),
    );
  }

  Row parts(BuildContext context,String x, String y,String a, String b) {
    return Row(
      children: [
        InkWell(onTap: () {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) => new Products(
              value: y,
              value2: "300",
            ),
          );
          Navigator.of(context).push(route);
        },
          child: Container(
            width: 180,
            height: 100,
            child:GridTile(

              child: Image.network(x,),
              footer: Container(

                  color: Colors.lightBlue.withOpacity(0.5),
                  height: 30,
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    y,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )),),

          ),),
        Padding(padding: EdgeInsets.only(left: 25)),
        InkWell(onTap: () {
          var route = new MaterialPageRoute(
            builder: (BuildContext context) => new Products(
              value: b,
              value2: "500",
            ),
          );
          Navigator.of(context).push(route);
        },
          child: Container(
            width: 200,
            height: 100,
            child:GridTile(

              child: Image.network(a,),
              footer: Container(

                  color: Colors.lightBlue.withOpacity(0.5),
                  height: 30,
                  width: 60,
                  alignment: Alignment.center,
                  child: Text(
                    b,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )),),

          ),),
      ],
    );
  }
}
