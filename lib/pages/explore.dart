import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/expPage.dart';
class explore extends StatefulWidget {
  State<StatefulWidget> createState() {
    return exploreState();
  }
}
class exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Insurance Companies"),backgroundColor: Colors.lightBlue[400],),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          Text("Select your provider",style: TextStyle(color: Colors.black,fontSize: 24),),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                                value:"AXA",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://hotlines.tel/assets/imgs/hotlinesimgs/16387.jpg",
                                width: 190,
                                height: 150)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"AXA",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFboerlQyuQ_kB6Vi9_Sbarr2AB0P8P6kpgljvkFuHLBKKRf_xoMUQkwJSyvckh2NB9WY&usqp=CAU",
                                width: 190,
                                height: 150
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"NextCare",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://dubaitravelator.com/wp-content/themes/directorypress/thumbs/next-care-insurance-company-dubai-uae.jpg",
                                width: 190,
                                height: 150)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"MedNet",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://healthbayclinic.com/wp-content/uploads/2020/05/mednet.png",
                                width: 190,
                                height: 150)),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"Roche",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Hoffmann-La_Roche_logo.svg/1200px-Hoffmann-La_Roche_logo.svg.png",
                                width: 190,
                                height: 150)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"Unicare",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://wuzzuf.s3.eu-west-1.amazonaws.com/files/company_logo/UNICARE-Medical-Care---Centers-Egypt-17196-1581350037-og.jpg",
                                width: 190,
                                height: 150)),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"MediConsult",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://media-exp1.licdn.com/dms/image/C4D0BAQGFofC7En_blw/company-logo_200_200/0/1623446039857?e=2159024400&v=beta&t=929rPXxN1UAf6U-16vfHkEA4PWUG-V7k_jd5oVO4nj0",
                                width: 190,
                                height: 150)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new expPage(
                              value:"AMC",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                                "https://www.hotlinesegypt.com/wp-content/uploads/2019/04/%D8%A7%D9%84%D8%A3%D9%87%D9%84%D9%8A-%D9%84%D9%84%D8%AE%D8%AF%D9%85%D8%A7%D8%AA-%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9-19462-372x400.png",
                                width: 190,
                                height: 150)),
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}