// @dart=2.9
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/cart.dart';
import './pages/explore.dart';
import './pages/Brand.dart';
import './pages/expPage.dart';
import './pages/products.dart';
import './pages/Offers.dart';
import './pages/offView.dart';
import './pages/Covid.dart';
import './pages/covidView.dart';
import './pages/baby.dart';
import './pages/login.dart';
import './pages/signup.dart';

void main() => runApp(MyHomePage());
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MOBTECH",
      home: Home(),
      routes:{
        'SignUp':(context){
          return SignUp();
        },
        'login':(context){
          return login();
        },
        'cart':(context){
          return cart();
        },
        'baby':(context){
          return baby();
        },
        'coView':(context){
          return CoView();
        },
        'Covid':(context){
          return Covid();
        },
        'offView':(context){
          return offView();
        },
        'Offers':(context){
          return Offers();
        },
        'products':(context){
          return Products();
        },

        'expPage':(context){
          return expPage();
        },
        'Brand':(context){
          return Brand();
        },
        'explore':(context){
          return explore();
        },
        'home':(context){
          return Home();
        },

      },
    );
  }
}