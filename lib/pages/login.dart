import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return loginState();
  }
}

class loginState extends State<login> {
  TextEditingController username =new TextEditingController();
  TextEditingController password=new TextEditingController();
  GlobalKey<FormState> formstate = new  GlobalKey();
  GlobalKey<FormState> formstate2 = new  GlobalKey();


 // TapGestureRecognizer changesign;
  bool showsign = true;
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "LogIn..",
          ),
          centerTitle: true,
        ),
        body: Ink(
          color: Colors.white,
          child: ListView(
            children: [
              Container(
                  child: Image.network(
         "https://images.wuzzuf-data.net/files/company_covers/thumbs/e688c2d603439bac54efabb538a810d7.png")),
              Padding(padding: EdgeInsets.only(top: 100)),
              Form(
                  key: formstate2,
                  child: Column(
                    children: [
                      Container(
                          width: 330,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.lightBlue[400],
                            child: TextFormField(
                              controller: username,
                              //validator: Valid2,
                              maxLines: 1,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.white),
                                labelText: "Username",
                                prefixIcon: Icon(
                                  Icons.person_rounded,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  gapPadding: 20,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
              Padding(padding: EdgeInsets.only(top: 10)),
              Form(
                  key: formstate,
                  child: Column(
                    children: [
                      Container(
                          width: 330,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.lightBlue[400],
                            child: TextFormField(
                              controller: password,
                            //  validator: Valid,
                              maxLines: 1,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                labelText: "Password",
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  gapPadding: 20,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  )),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "Forgot password ??",
                      style: TextStyle(color: Colors.grey[400]),
                    //  recognizer: changesign
                    ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                  child: RaisedButton(
                    onPressed: (){},
                      //onPressed: Signin,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                              width: 90,
                              height: 60,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.orange[400],
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.assignment_ind_rounded,
                                        color: Colors.white,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "  Login",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ],
                                  )))
                        ],
                      ))),

              Container(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('SignUp');
                      },
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            child: Text(
                                "if you don't have account press here..",
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 16,
                                    fontStyle: FontStyle.italic)),
                          ),
                          Container(
                              width: 90,
                              height: 60,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.orange[400],
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.assignment_ind_rounded,
                                        color: Colors.white,
                                      ),
                                      Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "  SignUp",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    ],
                                  )))
                        ],
                      )))
            ],
          ),
        ),
      ),
    );
  }
}