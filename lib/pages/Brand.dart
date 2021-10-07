
import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/products.dart';


class Brand extends StatefulWidget {
  State<StatefulWidget> createState() {
    return BrandState();
  }
}

class BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Insurance Companies"),backgroundColor: Colors.lightBlue[400],),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Column(
              children: [
                cardy("https://cdn.salla.sa/zZWwl/GLtnU2ESi51xCsAYzhLPIj7rdXXFAkiFWU1P4rKN.png","https://cdn.salla.sa/AxKBe/jDBvgNLNfO68s0RF4VcVAfsymJrKEmqXxPZcPqCe.png","La Roche Posay","250"),
                cardy("https://tarekfloyd.com/wp-content/uploads/2020/08/loreal-paris-builds-brand-love-with-search_ca.width-1200.jpg",
                  "https://freepngimg.com/thumb/axe/32710-9-axe-logo-image.png","VICHY","250"),
                cardy("https://www.zoe.com.sa/brands_images/I56wcxFneXAn9cGQ6P9E70qghrDvR1OUb6qSDZg4.png",
                  "https://cdn.salla.sa/ARbO/o38M5UZR5J8hZMN8KO2xfqfIXLOsxCwmE9adeoOd.png","L'OREAL","250"),
                cardy("https://banner2.cleanpng.com/20180402/kjq/kisspng-logo-brand-always-fanta-5ac2c739922495.7885889215227144255986.jpg",
                  "https://4.bp.blogspot.com/-yP3gInin1L4/WRGz1KcF1aI/AAAAAAAAFz8/qerc8UuQFa01khlMeGHpCgCcWGOkvhjMgCLcB/s1600/427a90fb1777734742a6af04ccef6bca.png"
                    ,"AXE","250"),
                cardy("https://1000logos.net/wp-content/uploads/2021/06/Lux-Logo.png",
                  "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/33221538_1249950148473824_5904636054022914048_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ynvkdqMmpPIAX_nadHb&tn=dJMN2JEeFCxgsw6A&_nc_ht=scontent.fcai20-1.fna&oh=91b3ca71a0cee95bbe1604c8a6ae9aea&oe=617DB137",
                    "GARVIER","250"),
                cardy("https://allvectorlogo.com/img/2016/04/oral-b-logo.png",
                  "https://mark.trademarkia.com/services/logo.ashx?sid=86401803","BIODERMA","250"),
                cardy("https://cdn.salla.sa/zZWwl/GLtnU2ESi51xCsAYzhLPIj7rdXXFAkiFWU1P4rKN.png","https://cdn.salla.sa/AxKBe/jDBvgNLNfO68s0RF4VcVAfsymJrKEmqXxPZcPqCe.png",
                    "ALWAYS","250"),
                cardy("https://tarekfloyd.com/wp-content/uploads/2020/08/loreal-paris-builds-brand-love-with-search_ca.width-1200.jpg",
                  "https://freepngimg.com/thumb/axe/32710-9-axe-logo-image.png","JOHNSON","250"),
                cardy("https://www.zoe.com.sa/brands_images/I56wcxFneXAn9cGQ6P9E70qghrDvR1OUb6qSDZg4.png",
                  "https://cdn.salla.sa/ARbO/o38M5UZR5J8hZMN8KO2xfqfIXLOsxCwmE9adeoOd.png","LUX","250"),
                cardy("https://banner2.cleanpng.com/20180402/kjq/kisspng-logo-brand-always-fanta-5ac2c739922495.7885889215227144255986.jpg",
                  "https://4.bp.blogspot.com/-yP3gInin1L4/WRGz1KcF1aI/AAAAAAAAFz8/qerc8UuQFa01khlMeGHpCgCcWGOkvhjMgCLcB/s1600/427a90fb1777734742a6af04ccef6bca.png","BIOPHE","250"),
                cardy("https://1000logos.net/wp-content/uploads/2021/06/Lux-Logo.png",
                  "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/33221538_1249950148473824_5904636054022914048_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ynvkdqMmpPIAX_nadHb&tn=dJMN2JEeFCxgsw6A&_nc_ht=scontent.fcai20-1.fna&oh=91b3ca71a0cee95bbe1604c8a6ae9aea&oe=617DB137",
                    "ORAL-B","250"),
                cardy("https://allvectorlogo.com/img/2016/04/oral-b-logo.png",
                  "https://mark.trademarkia.com/services/logo.ashx?sid=86401803","HERO","250"),
                cardy("https://cdn.salla.sa/zZWwl/GLtnU2ESi51xCsAYzhLPIj7rdXXFAkiFWU1P4rKN.png","https://cdn.salla.sa/AxKBe/jDBvgNLNfO68s0RF4VcVAfsymJrKEmqXxPZcPqCe.png","La Roche Posay","250"),
                cardy("https://tarekfloyd.com/wp-content/uploads/2020/08/loreal-paris-builds-brand-love-with-search_ca.width-1200.jpg",
                  "https://freepngimg.com/thumb/axe/32710-9-axe-logo-image.png","La Roche Posay","250"),
                cardy("https://www.zoe.com.sa/brands_images/I56wcxFneXAn9cGQ6P9E70qghrDvR1OUb6qSDZg4.png",
                  "https://cdn.salla.sa/ARbO/o38M5UZR5J8hZMN8KO2xfqfIXLOsxCwmE9adeoOd.png","La Roche Posay","250"),
                cardy("https://banner2.cleanpng.com/20180402/kjq/kisspng-logo-brand-always-fanta-5ac2c739922495.7885889215227144255986.jpg",
                  "https://4.bp.blogspot.com/-yP3gInin1L4/WRGz1KcF1aI/AAAAAAAAFz8/qerc8UuQFa01khlMeGHpCgCcWGOkvhjMgCLcB/s1600/427a90fb1777734742a6af04ccef6bca.png","La Roche Posay","250"),
                cardy("https://1000logos.net/wp-content/uploads/2021/06/Lux-Logo.png",
                  "https://scontent.fcai20-1.fna.fbcdn.net/v/t1.6435-9/33221538_1249950148473824_5904636054022914048_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=ynvkdqMmpPIAX_nadHb&tn=dJMN2JEeFCxgsw6A&_nc_ht=scontent.fcai20-1.fna&oh=91b3ca71a0cee95bbe1604c8a6ae9aea&oe=617DB137"
                    ,"La Roche Posay","250"),
                cardy("https://allvectorlogo.com/img/2016/04/oral-b-logo.png",
                  "https://mark.trademarkia.com/services/logo.ashx?sid=86401803","La Roche Posay","250"),
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