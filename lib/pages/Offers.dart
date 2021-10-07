import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/products.dart';

class Offers extends StatefulWidget {
  State<StatefulWidget> createState() {
    return OffersState();
  }
}

class OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Offers",
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
          Container(
              height: 150.0,
              width: 700.0,
              child: Carousel(
                images: [
                  NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaXlVoWHbPQgfddjcO4-k2-nEIRU8_9Osu1up207xDZ2GPfHkQhXklbCJfudMq2gmd5FE&usqp=CAU'),
                  NetworkImage(
                      'https://s7ti.com/wp-content/uploads/2019/02/FB_IMG_1550756031414.jpg'),
                  NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYyEQLBZNCsB7MmwXFRFddeNQ9ShdKD_uS6w&usqp=CAU'),
                  NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJy85N90bLICpcWWnYPuz_HlU2Jz59cUmb-aJK-w8_iAQedg2q_fwNLTwef5qZCSEG-ok&usqp=CAU'),
                ],
                dotColor: Colors.orange[300],
                dotBgColor: Colors.white70.withOpacity(0),
                borderRadius: true,
                radius: Radius.circular(50),
              )),
          Padding(padding: EdgeInsets.only(top: 50)),
          //top pick
          Container(
            child: Row(
              children: [
                Text(
                  " Top Picks",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.local_fire_department_sharp,
                      color: Colors.orange,
                    )),
                Padding(padding: EdgeInsets.only(left: 170)),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('offView');
                    },
                    child: Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 20, color: Colors.lightBlue[400]),
                    ))
              ],
            ),
          ),
          Container(
            height: 100.0,
            width: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(padding: EdgeInsets.only(left: 5)),
                InkWell(
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Products(
                        value: "School essential products",
                        value2: "300",
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    child: Image.network(
                      "https://www.hellomagazine.com/imagenes/healthandbeauty/mother-and-baby/2020081895568/back-to-school-checklist-essentials/0-457-918/back-to-school-essentials-t.jpg",
                      width: 200,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 1)),
                InkWell(
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Products(
                        value: "Top SunBlock",
                        value2: "400",
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    child: Image.network(
                        "https://www.tripsinegypt.com/wp-content/uploads/2019/11/Sunscreen-Lotion-What-to-Pack-for-Egypt-Trips-in-Egypt-1.jpg"),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                InkWell(
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Products(
                        value: "Beach essentials ",
                        value2: "400",
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    child: Image.network(
                      "https://stylecaster.com/wp-content/uploads/2016/06/beach-hair-products-feat.jpg",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                InkWell(
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Products(
                        value: "Infant Nutrition",
                        value2: "370",
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    child: Image.network(
                      "https://corpbiz.io/learning/wp-content/uploads/2020/12/FSSAI-upon-Food-for-Infant-Nutrition.jpg",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                InkWell(
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Products(
                        value: "Top Picks for her",
                        value2: "600",
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    child: Image.network(
                      "https://cohealthop.org/wp-content/uploads/2019/12/Wellness-Products-for-Women.jpg",
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                InkWell(
                  onTap: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new Products(
                        value: "Top Picks for him",
                        value2: "400",
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Container(
                    child: Image.network(
                      "https://img.dtcn.com/image/themanual/budget-grooming-man-buying-grooming-products-in-pharmacy-getty-images.jpg",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          //top pick
          Container(
            child: Row(
              children: [
                Text(
                  " Offers By Category",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          InkWell(
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Products(
                  value: "Baby Care",
                  value2: "300",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Image.network("https://www.manilaonsale.com/wp-content/uploads/2013/03/Baby-Company-Sale-March-2013.jpg",width: 140,height: 140,),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          InkWell(
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Products(
                  value: "MakeUp",
                  value2: "300",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Card(
              child: Image.network("https://a.cdnsbn.com/m/images/English/mbanner_Makeup20Sep18_1.jpg"
                ,width: 140,height: 165,),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          InkWell(
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Products(
                  value: "Skin Care",
                  value2: "300",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Image.network("https://a.cdnsbn.com/m/images/English/mbanner_SkincareSale20OffSep19_1.jpg",width: 140,height: 175,),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          InkWell(
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Products(
                  value: "Hair Care",
                  value2: "300",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Image.network("https://www.everydayonsales.com/wp-content/uploads/sites/5/2021/01/guardian-shampoo-offer-3-768x298-1.jpg",width: 140,height: 155,),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          InkWell(
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Products(
                  value: "Women care",
                  value2: "300",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Image.network("https://images.cdn2.stockunlimited.net/preview1300/women-s-day-discount-banner_1989644.jpg",width: 140,height: 135,),
          ),
          Padding(padding: EdgeInsets.only(top: 5)),
          InkWell(
            onTap: () {
              var route = new MaterialPageRoute(
                builder: (BuildContext context) => new Products(
                  value: "both and soap sales",
                  value2: "300",
                ),
              );
              Navigator.of(context).push(route);
            },
            child: Image.network("https://static.slickdealscdn.com/attachment/6/0/9/8/3/7/8/10466443.attach",width: 140,height: 155,),
          ),

        ],
      ),
    );
  }
}
