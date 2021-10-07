import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:yoadwi/pages/expPage.dart';
import 'package:yoadwi/pages/products.dart';
import 'package:yoadwi/pages/Covid.dart';
import 'package:yoadwi/pages/mc.dart';
import 'package:yoadwi/pages/baby.dart';





class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: new Drawer(
        child: Container(color: Colors.lightBlue[400],
        child:Column(
          children: [
            Image.network("https://hoouri.com/wp-content/uploads/2020/12/Untitled-1.jpg"),
            Padding(padding: EdgeInsets.only(top: 100)),
            InkWell(onTap: (){
              Navigator.of(context).pushNamed('login');
            },
              child:Container(
              height: 40,
              width: 250,
              color: Colors.white,
              alignment: Alignment.center,
              child: Text("LOG IN",style: TextStyle(color: Colors.lightBlue[400],fontSize: 20),),
            ) ,),
            Padding(padding: EdgeInsets.only(top: 10)),
            InkWell(onTap: (){},child:Container(
              alignment: Alignment.center,
              child: Text("Need help? Tap here!",style: TextStyle( decoration: TextDecoration.underline,color: Colors.white,fontSize: 16),),
            ) ,)

          ],
        ) ,
        ),
      ),
      appBar: AppBar(

        title: Text(
          "Yodawy",
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
        leading: Builder(
          builder: (context) {
            return IconButton(icon: Icon(Icons.view_headline),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }
        ),
        brightness: Brightness.light,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.lightBlue[400],
            height: 80,
            width: double.infinity,
            child: InkWell(
              onTap: (){showSearch(context: context, delegate: DataSearch());},
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
                        onPressed: () {
                          showSearch(context: context, delegate: DataSearch());
                        }),
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
              height: 250.0,
              width: 700.0,
              child: Carousel(
                images: [
                  NetworkImage(
                      'https://www.laplatadental.com/blog/wp-content/uploads/2020/10/AdobeStock_215510866__1600804020_39327-300x200.jpg'),
                  NetworkImage(
                      'https://thumbs.dreamstime.com/z/doctor-holding-card-text-take-care-yourself-your-loved-ones-both-hands-medical-concept-197621492.jpg'),
                  NetworkImage(
                      'https://cdn.shopify.com/s/files/1/0035/4274/5152/files/UFC-Sign-Up---Popup_600x_d694f418-64e9-4c79-8504-0ff12749b0cc_600x.png?v=1544738119'),
                ],
                dotColor: Colors.lightBlue[400],
                dotBgColor: Colors.white70.withOpacity(0.5),
                borderRadius: true,
                radius: Radius.circular(100),
                overlayShadow: true,
              )),
          Padding(padding: EdgeInsets.only(top: 50)),
          //word
          Container(

            child: Row(
              children: [
                Text(
                  "Order Medications",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Container(
            child: Row(
              children: [
                Container(

                  width:200,
                  height: 150,
                  child: Card(
                    color: Colors.lightBlue[50],
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.medical_services,
                              color: Colors.black,
                            )),
                        Text("Find",style: TextStyle(fontSize: 20,
                            color: Colors.black,)),
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text("Medications",style: TextStyle(fontSize: 20,
                            color: Colors.black,)),
                      ],
                    ),
                    
                  ),

                ),
                Container(

                  width:200,
                  height: 150,
                  child: Card(
                    color: Colors.lightBlue[50],
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[

                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.camera_alt_outlined,
                                    color: Colors.black,
                                  )),
                          ],
                          ),
                        ),

                        Text("Order Via",style: TextStyle(fontSize: 20,
                          color: Colors.black,)),
                        Padding(padding: EdgeInsets.only(top: 7)),
                        Text("Prescription",style: TextStyle(fontSize: 20,
                          color: Colors.black,)),
                      ],
                    ),

                  ),

                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Row(
              children: [
                Text(
                  "Shop by Category",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                     InkWell(
                       onTap: (){Navigator.of(context).pushNamed('Offers');},
                        child: Card(
                          child: Column(
                            children: [
                              Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMl-0dntRzPCnH0__f1zFWbUgmDMWNVVhYR39yjQO5R5HSjjScWWhDBH_1KHkF84hSPvw&usqp=CAU",
                                width: 120,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Offers",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        onTap: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MC(
                              value:"Covid Essentials",
                              value2:"Baby Care Products",
                              a1: "https://img.youm7.com/large/s5201031135937.jpg",
                              a2: "https://tukuz.com/wp-content/uploads/2021/01/beurer-gmbh-logo-vector.png",
                              a3: "Detol  and beurer",
                              a4: "https://www.kindpng.com/picc/m/337-3374603_lifebuoy-lifesaver-transparent-lifebuoy-logo-hd-png-download.png",
                              a5: "https://www.easy-hbc.com/images/logo.png",
                              b: "Lifebuoy and easy",
                              b1: "https://www.kandeel.org/App_Upload/MaxTouch.jpg",
                              b2: "https://sukhtian.com/sites/default/files/styles/inner_sections/public/HiGeen-Logo_2.png?itok=3IEBzQwG",
                              b3: "Maxtouchi and HiGeen",
                              b4:"https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/12/GettyImages-1213955146_header-1024x575.jpg?w=1155&h=1528",
                              b5:"masks",
                              c:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjEYdcENDTTyCtdPijvtXTv9-rBJuL6XrlZg&usqp=CAU",
                              c1:"Gloves",
                              c2:"https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/06/Hand_Sanitizer_1296x728-header.jpg?w=1155&h=1528",
                              c3:"Sanitizers",
                              c4: "http://images.summitmedia-digital.com/cosmo/images/antibacterial-main-image.jpg",
                              c5:"All Anti-Bacterials",
                              d:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sick-woman-measuring-body-temperature-royalty-free-image-1584978889.jpg?crop=1.00xw:0.752xh;0,0.159xh&resize=1200:*",
                              d1:"Fever",
                              d2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_RVyBIa7C1XUIvUQhzlzaDdVEtXshahOig&usqp=CAU",
                              d3:"Breathing",
                              d4:"Detol products",
                              d5:"Beurer",
                              e:"Lifebuoy ",
                              e1:"Easy",
                              e2:"Max Touchi",
                              e3:"HiGeen",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://blog-images.pharmeasy.in/2021/01/08134907/products-for-covid-.jpg",
                              width: 120,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Covid Essential",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        onTap: (){ var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new baby(
                            value:"Baby care",
                            value2:"Baby Care Products",
                            a1: "https://logowik.com/content/uploads/images/739_pampers.jpg",
                            a2: "https://cdn.turkishexporter.com.tr/storage/images/products/092ccba2-bba2-4175-bd30-0a4c1961c19c.png",
                            a3: "Pampers  and Molfix",
                            a4: "https://www.pngkey.com/png/detail/222-2227116_johnsons-johnson-johnson.png",
                            a5: "https://gruposky.es/wp-content/uploads/2020/04/Hero.png",
                            b: "Johnson and Hero",
                            b1: "https://cdn.shopify.com/s/files/1/0493/0483/0113/files/sanosan_baby_logo_643x.png?v=1609996776",
                            b2: "https://mir-s3-cdn-cf.behance.net/projects/404/21400789.546b32da6fbe1.jpg",
                            b3: "Sanosan and bebelac",
                            b4:"https://thumbs.dreamstime.com/b/mother-changes-diaper-baby-daughter-her-85766816.jpg",
                            b5:"Diapers",
                            c: "https://parentsneed.com/wp-content/uploads/2017/01/Top-5-Best-Diaper-Rash-Cream.jpg",
                            c1:"Diapers Cream",
                            c2:"https://www.keeeper.com/wp-content/uploads/2018/11/Blogbeitragsbild-Baby-baden.jpg",
                            c3:"Baby Bath",
                            c4: "https://www.todaysparent.com/wp-content/uploads/2019/12/moisturizing-can-prevent-food-allergies-and-other-baby-skincare-tips-you-need-to-know-1280x960-768x432-1575661424.jpg",
                            c5:"Skin Care",
                            d:"http://www.yoyo-mom.com/wp-content/uploads/2017/06/doddle-spoon-set.jpg",
                            d1:"Feeding Tools",
                            d2: "https://images.indianexpress.com/2019/06/bottle-feed.jpeg",
                            d3:"Formula",
                            d4: "https://cdn.cdnparenting.com/articles/2018/08/556921579-H.webp",
                            d5:"Cereals and jars",
                            e: "https://perfumesociety.org/wp-content/uploads/2016/11/TLOF-Baby-Trio-1024x1024.jpg",
                            e1:"Baby Perfumes",
                            e2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkPcP4je3ZMWR6rOTGr0U0sawUGa4RxVc9xiJsOwWTSPB3dG2zgEzNIljkVcvgywfpZbI&usqp=CAU",
                            e3:"Wipes",
                            e4: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTc3kO-W5bZdSsLpxiCkc6momA8jzEh2evE6lMRpSjyLTkhfwO4UbOMp1eRbDgdQtBYXkk&usqp=CAU",
                            e5:"Accessories",
                              f:"https://www.manilaonsale.com/wp-content/uploads/2013/03/Baby-Company-Sale-March-2013.jpg",
                            p1:"Pampers",
                            p2:"Molfix",
                            p3:"Johnson ",
                            p4:"Hero",
                            p5:"Sanosan",
                            p6:"Bebelac"
                          ),
                        );
                        Navigator.of(context).push(route);},
                        child:Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://pbs.twimg.com/profile_images/1175818499245203456/Ix6vgxuC.jpg",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Baby care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new Covid(
                              value:"Maternity Care",
                              value2:"Maternity Care Products",
                              a1: "https://babycart.net/wp-content/uploads/2019/11/sanosan.png",
                              a2: "https://logos-world.net/wp-content/uploads/2020/11/Mustela-Logo.png",
                              a3: "Biophe and sanosan",
                              a4: "https://www.name-doctor.com/nomi.png/26054.png",
                              a5: "https://images.wuzzuf-data.net/files/company_logo/BioPharmaEgypt--S-A-E--Egypt-18567-1527277426.png",
                              b: "Hayah and biophe",
                              b1: "https://www.kandeel.org/App_Upload/MaxTouch.jpg",
                              b2: "https://sukhtian.com/sites/default/files/styles/inner_sections/public/HiGeen-Logo_2.png?itok=3IEBzQwG",
                              b3: "Maxtouchi and HiGeen",
                              b4:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq5nNgJY-4RYFRSdyTqUrShAiRGFNjEbj94J2_uIV_md9oOUzt7-M8_WK6w_u0xaOpGF0&usqp=CAU",
                              b5:"Pads",
                              c:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFH1nTVlYYsoh790olJ6djtu6Nn_ElUaIEvmmSpedWtquZUI1oyErGsGwA6kKVMMQcM8w&usqp=CAU",
                              c1:"Creams",
                              c2:"https://qloob3.com/wp-content/uploads/2018/06/%D8%AC%D8%B1%D9%88%D8%AB-%D9%81%D9%88%D8%B1%D9%85%D9%8A%D9%84%D8%A7-%D9%84%D9%84%D8%AD%D9%88%D8%A7%D9%85%D9%84-524x400.jpg",
                              c3:"Growth Formules",
                              c4: "https://al3iadalive.com/wp-content/uploads/2020/12/%D8%A7%D8%AE%D8%AA%D8%A8%D8%A7%D8%B1-%D8%A7%D9%84%D8%AD%D9%85%D9%84-%D8%A7%D9%84%D8%B1%D9%82%D9%85%D9%8A.jpg",
                              c5:"Pregnancy Tests",
                              d4:"Sanosan products",
                              d5:"Mustela Products",
                              e:"Hayah Laboratories",
                              e1:"BioPhe products ",
                              e2:"Easy",
                              e3:"Max Touchi",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Image.network(
                                  "https://emedia1.nhs.wales/ABMUhb/cache/file/8074E6F1-A3E7-4FA2-B71E762922DEB683_carouselimage.jpeg",
                                  width: 120,
                                  height: 80),
                              Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Maternity care",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        onTap: (){ var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new baby(
                            value:"Women care",
                            value2:"Women Care Products",
                            a1: "https://cdn.freebiesupply.com/logos/large/2x/always-2-logo-png-transparent.png",
                            a2: "https://logos-world.net/wp-content/uploads/2020/11/Rexona-Logo.png",
                            a3: "always and rexona ",
                            a4: "https://logos-world.net/wp-content/uploads/2020/09/Carefree-Logo.png",
                            a5: "https://1000logos.net/wp-content/uploads/2021/04/Veet-logo.png",
                            b: "carefree and veet",
                            b1: "https://logos-world.net/wp-content/uploads/2020/09/Dove-Symbol.png",
                            b2: "https://logos-world.net/wp-content/uploads/2020/11/Nivea-Emblem.png",
                            b3: "Dove and nivea",
                            b4:"https://st4.depositphotos.com/18922288/23545/i/1600/depositphotos_235455740-stock-photo-tampons-feminine-sanitary-pads-flowers.jpg",
                            b5:"Pads and Tampons",
                            c: "https://cdn.shopify.com/s/files/1/0019/6185/3028/products/PantyLiners_maos_1200x.jpg?v=1592328052",
                            c1:"Pantylinears",
                            c2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGFJXOPD8Rpn28gVdMv6_0uG-2KT3O0CxvF3dYdzOeoBUkkqZg_73uHQgI6g8ls1sotKA&usqp=CAU",
                            c3:"Deodrants",
                            c4: "https://previews.123rf.com/images/puhhha/puhhha1703/puhhha170300089/73889788-professional-manicure-closeup-of-beautiful-woman-s-nails-with-red-nail-polish-with-nail-care-tools-o.jpg",
                            c5:"Hands and nails",
                            d:"https://images.everydayhealth.com/images/cs-hair-removal-methods-if-you-have-psoriasis-1440x810.jpg",
                            d1:"Hair Removal",
                            d2: "https://www.carefreearabia.com/sites/carefree_menap/files/files/header-images/intimate_washes.jpg",
                            d3:"intimate Hygiene",
                            d4: "https://cdn.theatlantic.com/thumbor/m2jKG1mhpbyfZ7TH4V0I1HaALC0=/0x47:1000x609/960x540/media/img/mt/2015/06/shutterstock_20577821/original.jpg",
                            d5:"Pregnancy Tests",
                            e: "https://perfumesociety.org/wp-content/uploads/2016/11/TLOF-Baby-Trio-1024x1024.jpg",
                            e1:" Perfumes",
                            e2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkPcP4je3ZMWR6rOTGr0U0sawUGa4RxVc9xiJsOwWTSPB3dG2zgEzNIljkVcvgywfpZbI&usqp=CAU",
                            e3:"Wipes",
                            e4: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0FT-vmej6WOs7GYO8husO0d5hWYP9OX2YuA&usqp=CAU",
                            e5:"Accessories",
                            f:"https://static.slickdealscdn.com/attachment/6/0/9/8/3/7/8/10466443.attach",
                            p1:"Garnier",
                            p2:"Pantene",
                            p3:"L'oreal ",
                            p4:"GK",
                            p5:"Gliss",
                            p6:"Dove",
                          ),
                        );
                        Navigator.of(context).push(route);},
                        child:Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ5DtyeaVORfbO0qCPn2vN-P0O6Sp5IcSbPA&usqp=CAU",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Women care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
    onTap: (){ var route = new MaterialPageRoute(
    builder: (BuildContext context) => new baby(
    value:"Skin care",
    value2:"Skin Care Products",
    a1: "https://img.yasmina.com/9BFDMToqteaLskP2qPyj9FI58GM=/700x475/smart/http://harmony-assets-live.s3.amazonaws.com/image_source/e5/56/e556875a619e55d4a0caef07ba6cb26958e225fa.jpg",
    a2: "https://logos-world.net/wp-content/uploads/2020/12/Vichy-Logo.png",
    a3: "La Rouche possay and Vichy ",

    a4: "https://www.cosmovalley.com/ecdata/stores/RNOKAW2648/image/data/Bioderma.png",
    a5: "https://nuxe-cdn.cyllene.cloud/images/default/logo_facebook.jpg",
    b: "Bioderma and Nuxe",

    b1: "https://logos-world.net/wp-content/uploads/2020/09/Dove-Symbol.png",
    b2: "https://logos-world.net/wp-content/uploads/2020/04/LOreal-Emblem.png",
    b3: "Dove and L'oreal",

    b4:"https://ae01.alicdn.com/kf/H9e8cf0ab896a4f31a38e1b6b3f323c694/BREYLEE-Acne-Treatment-Face-Serum-Anti-Acne-Scar-Removal-Facial-Essence-liquid-Whitening-Repair-Pimple-Remover.jpg_Q90.jpg_.webp",
    b5:"Acne Treatments",
    c: "https://img.youm7.com/large/201712160722302230.jpg",
    c1:"Anti Aging",
    c2:"https://ae01.alicdn.com/kf/H85a24293ce1749f899bb6f4630fd163fR/EELHOE-Whitening-Cream-Bleaching-Face-Body-Lightening-Cream-Underarm-Armpit-Whitening-Cream-Legs-Knees-Private-Parts.jpg_Q90.jpg_.webp",
    c3:"Whitening",
    c4: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Ate1sLmpfPCxetIZM-322EtOgyPfE2VwKQ&usqp=CAU",
    c5:"SunCare",
    d:"https://www.functionofbeauty.com/product/cleanser/img/slide-2.png",
    d1:"Cleansers",
    d2: "https://blog-images.pharmeasy.in/2018/03/29075941/PE_Blog181.png",
    d3:"Eye care",
    d4: "https://i2.wp.com/tutknow.ru/uploads/posts/2018-08/1535034968_zachem-nuzhen-skrab-dlya-lica.jpg",
    d5:"Masks and Scrubs",
    e: "https://wwd.com/wp-content/uploads/2021/09/augustinus-bader-moisturizer.jpg",
    e1:" Moisturizers",
    e2: "https://www.cairowestmag.com/wp-content/uploads/2021/06/skin-serum-today-main-190315-1417983.jpg",
    e3:"Serums",
    e4: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/glow-recipe-face-toner-2-1590767198.jpg",
    e5:"Toners",
    f:"https://a.cdnsbn.com/m/images/English/mbanner_SkincareSale20OffSep19_1.jpg",
    p1:"La Rouche possay ",
    p2:" Vichy",
    p3:"Bioderma ",
    p4:"Nuxe",
    p5:"Dove",
    p6:"L'oreal",
    ),
    );Navigator.of(context).push(route);},
                        child:Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://coupaeon.com/wp-content/uploads/2021/02/how-to-choose-the-best-facial-wash-for-combination-skin.jpg",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Skin care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(

                        onTap: (){ var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new baby(
                            value:"Hair care",
                            value2:"Hair Care Products",
                            a1: "https://www.garnierarabia.com/-/media/project/loreal/brand-sites/garnier/emea/mena-hub/logo_garnier.png?h=595&la=ar&w=1298&hash=D8956D2AFB63156BB0DA5356D28D274E6B3534CE",
                            a2: "https://1000logos.net/wp-content/uploads/2021/04/Pantene-logo.png",
                            a3: " Garnier and Pantene",

                            a4: "https://logos-world.net/wp-content/uploads/2020/04/LOreal-Logo-1962-present.jpg",
                            a5: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWWR-I1ViKwakM7T21TY612GouVogdX4Tre9EWH66kpMSmy5-2g5kNw9a59SG1wxQYPWI&usqp=CAUg",
                            b: "L'oreal and GK",

                            b1: "https://pepperyspot.com/wp-content/uploads/2020/09/gliss-logo.png",
                            b2: "https://logos-world.net/wp-content/uploads/2020/09/Dove-Symbol.png",
                            b3: "Gliss and Dove",

                            b4:"https://cdn.cosmetize.com/blog/uploads/2020/05/hair-conditioner-1024x682.jpg",
                            b5:"Shampoo",
                            c: "https://www.sephora.com/productimages/product/p461603-av-02-zoom.jpg?imwidth=315",
                            c1:"Conditioner",
                            c2:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/girlfriends-getting-new-haircut-royalty-free-image-1608056968.?crop=0.668xw:1.00xh;0.0884xw,0&resize=480:*",
                            c3:"Stying",
                            c4: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbz-hair-dye-gettyimages-463497051-1560800976.jpg",
                            c5:"Dyes",
                            d:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl2YmxXSc0fMkoNMZJ1F0aCASRPfCDhQR_jXIy9IfJJSrVz9s_opZvv-LTCzLhYUyCbJ4&usqp=CAU",
                            d1:"Anti-hairloss",
                            d2: "https://www.everlastwellness.com/ar/wp-content/uploads/2019/07/Platelet-Rich-Plasma-PRP-Therapy.jpg",
                            d3:"Treatments",
                            d4: "https://i2.wp.com/tutknow.ru/uploads/posts/2018-08/1535034968_zachem-nuzhen-skrab-dlya-lica.jpg",
                            d5:"Masks and Scrubs",
                            e: "https://wwd.com/wp-content/uploads/2021/09/augustinus-bader-moisturizer.jpg",
                            e1:" Moisturizers",
                            e2: "https://www.cairowestmag.com/wp-content/uploads/2021/06/skin-serum-today-main-190315-1417983.jpg",
                            e3:"Serums",
                            e4: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/glow-recipe-face-toner-2-1590767198.jpg",
                            e5:"Toners",
                            f:"https://static.slickdealscdn.com/attachment/6/0/9/8/3/7/8/10466443.attach",
                            p1:"Garnier ",
                            p2:"Pantene",
                            p3:"L'oreal ",
                            p4:"GK",
                            p5:"Gliss",
                            p6:"Dove",
                          ),
                        );Navigator.of(context).push(route);},
                        child:Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoQ49pC9XGA8zdE3YX_m3SVYr8iZWUBL17orf8HSq9wwW5EvrPoIkxrTy9SsRybZJzOFk&usqp=CAU",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Hair care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        onTap: (){ var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new baby(
                            value:"Bath and Soap",
                            value2:"Bath and Soap Products",
                            a1:'https://1000logos.net/wp-content/uploads/2021/06/Lux-Logo.png',
                            a2: "https://pbs.twimg.com/profile_images/831894438414807041/7aiDa6-j.jpg",
                            a3: "LUX and Detol",

                            a4: "https://lirp.cdn-website.com/0dd1feeb/dms3rep/multi/opt/Eng.%2BFine%2Blogo-1920w.png",
                            a5: "https://logos-world.net/wp-content/uploads/2020/11/Johnsons-Baby-Symbol.png",
                            b: "Fine and Johnson",

                            b1: "https://1000logos.net/wp-content/uploads/2020/09/Camay-Logo-2000.jpg",
                            b2: "https://logos-world.net/wp-content/uploads/2020/09/Dove-Symbol.png",
                            b3: "Camay and Dove",

                            b4:"https://cdn.cosmetize.com/blog/uploads/2020/05/hair-conditioner-1024x682.jpg",
                            b5:"Shampoo",
                            c: "https://ae01.alicdn.com/kf/HLB1d4xYSmzqK1RjSZPcq6zTepXaR/500lm-Skin-Care-Perfume-Shower-Gel-Smoothing-Body-Wash-Hydrating-Tender-Skin-Perfume-Shower-Gel-Bath.jpg",
                            c1:"Shower gel",
                            c2:"https://image.shutterstock.com/image-photo/closeup-hands-using-liquid-soap-260nw-1754756642.jpg",
                            c3:"Liquid soap",
                            c4: "https://pyxis.nymag.com/v1/imgs/957/9ae/68c6924a91715c39dc55ffcd8cb9348e4b-soap-lede.rsocial.w1200.jpg",
                            c5:"Bar soap",
                            d:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0N9GEOeci6h1NU8ZNQp4yZafi7nm1BvwFWiHQ5ukr10_gwx3g_VGYTJHQ_OLb8p3s50Y&usqp=CAU",
                            d1:"All Anti-Bacteria",
                            d2: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQe-xxw234WSTKRhHRhFilHmpl0YGFxXjq5qA&usqp=CAU",
                            d3:"Loofah",

                            d4: "https://i2.wp.com/tutknow.ru/uploads/posts/2018-08/1535034968_zachem-nuzhen-skrab-dlya-lica.jpg",
                            d5:"Masks and Scrubs",
                            e: "https://wwd.com/wp-content/uploads/2021/09/augustinus-bader-moisturizer.jpg",
                            e1:" Moisturizers",
                            e2: "https://www.cairowestmag.com/wp-content/uploads/2021/06/skin-serum-today-main-190315-1417983.jpg",
                            e3:"Serums",
                            e4: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/glow-recipe-face-toner-2-1590767198.jpg",
                            e5:"Toners",
                            f:"https://static.slickdealscdn.com/attachment/6/0/9/8/3/7/8/10466443.attach",
                            p1:"LUX ",
                            p2:"Detol",
                            p3:"Fine ",
                            p4:"Johnson",
                            p5:"Camay",
                            p6:"Dove",
                          ),
                        );Navigator.of(context).push(route);},
                        child:Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://ae01.alicdn.com/kf/HTB1qylMblfM8KJjSZFOq6xr5XXae/Hot-sale-Wall-Mounted-Gold-Stainless-Steel-Bathroom-Soap-Dish-Bath-Shower-Shelf-Bath-Shampoo-Holder.jpg_Q90.jpg_.webp",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Bath & Soap",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        onTap: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MC(
                              value:"Oral Care",
                              value2:"Oral Care Products",
                              a1: "https://www.signalmaghreb.com/content/dam/unilever/smile/global/icon/oral_care/all/signal_logo_560x235px-757762.png",
                              a2: "https://static.wikia.nocookie.net/jadine-lustreid/images/3/36/Closeup.png/revision/latest?cb=20160426020655",
                              a3: "Signal and CloseUp",
                              a4: "https://zomorod.com/images/feature_variant/13/listerine-logo.png",
                              a5: "https://i-cf65ch.gskstatic.com/content/dam/cf-consumer-healthcare/health-professionals/en_EG/sensitivity/GEP160_Sensodyne_logo.jpg?auto=format",
                              b: "Listerine and Sensodyne",
                              b1: "https://play-lh.googleusercontent.com/fO1sD60QXN1_EUZgAg7e6WfsAu0GyzlgkJ0O8ONja0a8bp7AACu8VLh-7pho212cKchL",
                              b2: "https://shop.eva-cosmetics.com/pub/media/emthemes/themesettings/smalllogo/logo-small@2x.jpg",
                              b3: "Oral-b and Eva",
                              b4:"https://i.insider.com/5ec5a3faaee6a87c511bda06?width=750&format=jpeg&auto=webp",
                              b5:"ToothBrush",
                              c:"https://www.tendersmiles4kids.com/wp-content/uploads/sensitivepaste-Aug2019-920x613.jpg",
                              c1:"ToothPaste",
                              c2:"https://www.manusdental.com/wp-content/uploads/2018/11/woman-pouring-mouthwash-min.jpg",
                              c3:"Mouth Wash",
                              c4: "https://images.indianexpress.com/2020/03/dental.jpg",
                              c5:"Dental Care",
                              d:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sick-woman-measuring-body-temperature-royalty-free-image-1584978889.jpg?crop=1.00xw:0.752xh;0,0.159xh&resize=1200:*",
                              d1:"Fever",
                              d2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_RVyBIa7C1XUIvUQhzlzaDdVEtXshahOig&usqp=CAU",
                              d3:"Breathing",
                              d4:"Signal products",
                              d5:"CloseUpr",
                              e:"Listerine ",
                              e1:"Sensodyne",
                              e2:"Oral-b",
                              e3:"eva",

                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://www.dentalstudioofpasadena.com/wp-content/uploads/2019/01/Tips-For-The-Best-Adult-Oral-Hygiene-Routine.jpg",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Oral care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){//Navigator.of(context).pushNamed('baby');
                          },
                        child:Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://images.dearborn.org/wp-content/uploads/2021/06/makeup-cosmetics.jpg",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Makeup",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://www.alivestemcell.com/wp-content/uploads/sexual-wellness-el-paso-tx.jpg",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Sexualwellnes",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                        onTap: () {
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new MC(
                              value:"Personal",
                              value2:"personal Care Products",
                              a1: "https://img.youm7.com/large/s5201031135937.jpg",
                              a2: "https://tukuz.com/wp-content/uploads/2021/01/beurer-gmbh-logo-vector.png",
                              a3: "Detol  and beurer",
                              a4: "https://www.kindpng.com/picc/m/337-3374603_lifebuoy-lifesaver-transparent-lifebuoy-logo-hd-png-download.png",
                              a5: "https://www.easy-hbc.com/images/logo.png",
                              b: "Lifebuoy and easy",
                              b1: "https://www.kandeel.org/App_Upload/MaxTouch.jpg",
                              b2: "https://sukhtian.com/sites/default/files/styles/inner_sections/public/HiGeen-Logo_2.png?itok=3IEBzQwG",
                              b3: "Maxtouchi and HiGeen",
                              b4:"https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/12/GettyImages-1213955146_header-1024x575.jpg?w=1155&h=1528",
                              b5:"masks",
                              c:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjEYdcENDTTyCtdPijvtXTv9-rBJuL6XrlZg&usqp=CAU",
                              c1:"Gloves",
                              c2:"https://i0.wp.com/post.healthline.com/wp-content/uploads/2020/06/Hand_Sanitizer_1296x728-header.jpg?w=1155&h=1528",
                              c3:"Sanitizers",
                              c4: "http://images.summitmedia-digital.com/cosmo/images/antibacterial-main-image.jpg",
                              c5:"All Anti-Bacterials",
                              d:"https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sick-woman-measuring-body-temperature-royalty-free-image-1584978889.jpg?crop=1.00xw:0.752xh;0,0.159xh&resize=1200:*",
                              d1:"Fever",
                              d2:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_RVyBIa7C1XUIvUQhzlzaDdVEtXshahOig&usqp=CAU",
                              d3:"Breathing",
                              d4:"Detol products",
                              d5:"Beurer",
                              e:"Lifebuoy ",
                              e1:"Easy",
                              e2:"Max Touchi",
                              e3:"HiGeen",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcAUgY1M2o8uVc02yI0LaF02PF51J06sgNXR7ZWNBVP64I_IjjRsOifOU8WEtaMtoU75I&usqp=CAU",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Personal care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSOFUvmQNTLhhDsyTiJFvg1bAOLKJlLjl2QpiZDrhCbMv_4Bpiv5ASt81XK5HOIa-Lupw&usqp=CAU",
                              width: 120,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Supplements",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                       //MC on tap
                        child: Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg",
                              width: 120,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Men Care",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      InkWell(
                       //MC on tap
                        child: Card(
                        child: Column(
                          children: [
                            Image.network(
                              "https://www.netmeds.com/images/cms/wysiwyg/blog/2019/11/MedicalDevices_big_898.jpg",
                              width: 120,
                              height: 80,
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Devices",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )),
                          ],
                        ),
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            child: Row(
              children: [
                Text(
                  "Shop by Brand",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 150)),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('Brand');
                    },
                    child: Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 20, color: Colors.lightBlue[400]),
                    ))
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
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
                            new Products(
                              value:"La Rouche Posay",
                              value2:"300",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child: Card(
                            child: Image.network(
                          "https://cdn.salla.sa/zZWwl/GLtnU2ESi51xCsAYzhLPIj7rdXXFAkiFWU1P4rKN.png",
                          width: 120,
                        )),
                      ),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new Products(
                              value:"VICHY",
                              value2:"300",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child:Card(
                          child: Image.network(
                        "https://cdn.salla.sa/AxKBe/jDBvgNLNfO68s0RF4VcVAfsymJrKEmqXxPZcPqCe.png",
                        width: 120,
                      )),),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new Products(
                              value:"L'Oreal'",
                              value2:"300",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child:Card(
                          child: Image.network(
                        "https://tarekfloyd.com/wp-content/uploads/2020/08/loreal-paris-builds-brand-love-with-search_ca.width-1200.jpg",
                        width: 120,
                      )),),
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
                            new Products(
                              value:"AXE",
                              value2:"300",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child:Card(
                          child: Image.network(
                        "https://freepngimg.com/thumb/axe/32710-9-axe-logo-image.png",
                        width: 120,
                      )),),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new Products(
                              value:"GARNIER",
                              value2:"300",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child:Card(
                          child: Image.network(
                        "https://www.zoe.com.sa/brands_images/I56wcxFneXAn9cGQ6P9E70qghrDvR1OUb6qSDZg4.png",
                        width: 120,
                      )),),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(
                        onTap: (){
                          var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new Products(
                              value:"BIODERMA",
                              value2:"300",
                            ),
                          );
                          Navigator.of(context).push(route);
                        },
                        child:Card(
                          child: Image.network(
                        "https://cdn.salla.sa/ARbO/o38M5UZR5J8hZMN8KO2xfqfIXLOsxCwmE9adeoOd.png",
                        width: 120,
                      )),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Container(
            child: Row(
              children: [
                Text(
                  "Explore insurance Services",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                InkWell(
                    onTap: () {Navigator.of(context).pushNamed("explore");},
                    child: Text(
                      "View All",
                      style:
                          TextStyle(fontSize: 20, color: Colors.lightBlue[400]),
                    ))
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          //exploreeee insurance
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      InkWell(onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new expPage(
                            value:"MetLife",
                          ),
                        );
                        Navigator.of(context).push(route);
                      },
                        child: Card(
                            child: Image.network(
                                "https://hotlines.tel/assets/imgs/hotlinesimgs/16387.jpg",
                                width: 120,
                                height: 80)),
                      ),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new expPage(
                            value:"AXA",
                          ),
                        );
                        Navigator.of(context).push(route);
                      },
                        child:Card(
                          child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFboerlQyuQ_kB6Vi9_Sbarr2AB0P8P6kpgljvkFuHLBKKRf_xoMUQkwJSyvckh2NB9WY&usqp=CAU",
                        width: 120,
                        height: 80,
                      )),),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new expPage(
                            value:"Nextcare",
                          ),
                        );
                        Navigator.of(context).push(route);
                      },
                        child:Card(
                          child: Image.network(
                              "https://dubaitravelator.com/wp-content/themes/directorypress/thumbs/next-care-insurance-company-dubai-uae.jpg",
                              width: 120,
                              height: 80)),),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: Row(
                    children: [
                      InkWell(onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new expPage(
                            value:"MedNet",
                          ),
                        );
                        Navigator.of(context).push(route);
                      },
                        child:Card(
                          child: Image.network(
                              "https://healthbayclinic.com/wp-content/uploads/2020/05/mednet.png",
                              width: 120,
                              height: 80)),),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new expPage(
                            value:"Unicare",
                          ),
                        );
                        Navigator.of(context).push(route);
                      },
                        child:Card(
                          child: Image.network(
                              "https://wuzzuf.s3.eu-west-1.amazonaws.com/files/company_logo/UNICARE-Medical-Care---Centers-Egypt-17196-1581350037-og.jpg",
                              width: 120,
                              height: 80)),),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      InkWell(onTap: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new expPage(
                            value:"Roche",
                          ),
                        );
                        Navigator.of(context).push(route);
                      },
                        child:Card(
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Hoffmann-La_Roche_logo.svg/1200px-Hoffmann-La_Roche_logo.svg.png",
                              width: 120,
                              height: 80)),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
        ],
      ),
    );
  }
}
class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = " ";
          })
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }
  @override
  Widget buildResults(BuildContext context) {
    return Text("resutltt..");
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, i) {
        return ListTile(

          onTap: () {
            showResults(context);
          },
        );
      },
    );
  }
}