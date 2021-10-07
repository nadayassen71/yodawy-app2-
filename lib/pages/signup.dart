import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  TextEditingController username =new TextEditingController();
  TextEditingController password=new TextEditingController();
  TextEditingController email=new TextEditingController();

  GlobalKey<FormState>formstate = new  GlobalKey();
  GlobalKey<FormState>formstate2 = new  GlobalKey();
  GlobalKey<FormState>formstate3 = new  GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "SignUp..",
          ),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.white,
            child: ListView(
              children: [
                Container(
                    height: 200,
                    child: Image.network(
                       "https://images.wuzzuf-data.net/files/company_covers/thumbs/e688c2d603439bac54efabb538a810d7.png")),
                Container(
                  alignment: Alignment.center,
                  child: Text("Please fill this form to create your account ..",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 16,
                          fontStyle: FontStyle.italic)),
                ),
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
                              color: Colors.grey[200],
                              child: TextFormField(
                                controller: username,
                               // validator: Valid,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelStyle:
                                  TextStyle(color: Colors.lightBlue[500]),
                                  labelText: "Fullname",
                                  prefixIcon: Icon(
                                    Icons.person_rounded,
                                    color: Colors.lightBlue[500],
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
                    key: formstate2,
                    child: Column(
                      children: [
                        Container(
                            width: 330,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.grey[200],
                              child: TextFormField(
                                controller: email,
                               //validator: Valid2,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  labelStyle:
                                  TextStyle(color: Colors.lightBlue[500]),
                                  labelText: "Email address",
                                  prefixIcon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.lightBlue[500],
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
                    key: formstate3,
                    child: Column(
                      children: [
                        Container(
                            width: 330,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.grey[200],
                              child: TextFormField(
                                controller: password,
                               // validator: Valid3,
                                maxLines: 1,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    color: Colors.lightBlue[500],
                                  ),
                                  labelText: "Password",
                                  prefixIcon: Icon(
                                    Icons.vpn_key,
                                    color: Colors.lightBlue[500],
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
                  child: Text(
                      "Please use numbers and low and upper case letters",
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12,
                          fontStyle: FontStyle.italic)),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Container(
                  color: Colors.white,
                    child: RaisedButton(
                        onPressed:(){},
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                                width: 90,
                                height: 60,
                                color: Colors.white,
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
                  color: Colors.white,
                    child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('login');
                        },
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text("Already have account ??",
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
                                              "  Login",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            )),
                                      ],
                                    )))
                          ],
                        )))
              ],
            )),
      ),
    );
  }
}
