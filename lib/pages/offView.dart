
import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/products.dart';


class offView extends StatefulWidget {
  State<StatefulWidget> createState() {
    return offViewState();
  }
}

class offViewState extends State<offView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Top Picks"),backgroundColor: Colors.lightBlue[400],),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Column(
              children: [
                cardy("https://www.hellomagazine.com/imagenes/healthandbeauty/mother-and-baby/2020081895568/back-to-school-checklist-essentials/0-457-918/back-to-school-essentials-t.jpg",
                    "https://www.tripsinegypt.com/wp-content/uploads/2019/11/Sunscreen-Lotion-What-to-Pack-for-Egypt-Trips-in-Egypt-1.jpg","School and Sun blocks","250"),
                cardy("https://stylecaster.com/wp-content/uploads/2016/06/beach-hair-products-feat.jpg",
                    "https://corpbiz.io/learning/wp-content/uploads/2020/12/FSSAI-upon-Food-for-Infant-Nutrition.jpg","Beach and infant nutrition","250"),
                cardy("https://cohealthop.org/wp-content/uploads/2019/12/Wellness-Products-for-Women.jpg",
                    "https://img.dtcn.com/image/themanual/budget-grooming-man-buying-grooming-products-in-pharmacy-getty-images.jpg","Top Picks for (her and him)","250"),
              ],

            ),
          ),
        ],
      ),
    );
  }

  Container cardy(String x, String y,String a, String b) {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: (){
              var route = new MaterialPageRoute(
                builder: (BuildContext context) =>
                new Products(
                  value:a,
                  value2:b,
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
                  value2:b,
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

}