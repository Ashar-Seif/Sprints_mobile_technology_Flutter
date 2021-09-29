
import 'package:flutter/material.dart';

import '/constants.dart';
import '/Screens/login.dart';
import '/Screens/signup.dart';
import '/Screens/userScreen.dart';






class WelcomeAdmin extends StatelessWidget {
  String name = "";
  WelcomeAdmin({ this.name});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        backgroundColor: Colors.deepPurple[50],
        body: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(left: 5, top: 50, right: 5),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30), //border corner radius
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), //color of shadow
                  spreadRadius: 5, //spread radius
                  blurRadius: 7, // blur radius
                  offset: const Offset(0, 2), // changes position of shadow
                ),
                //you can set more BoxShadow() here
              ],
            ),

            child: Column(
                children: <Widget>[
                  const SizedBox(height: 30),
                  Text('Welcome Back , ' + '$name',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(height: 20),
                  const Text('Wish you a productive time today',
                    textAlign: TextAlign.center,


                    style: TextStyle(color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 18.0),
                  ),
                  const SizedBox(height: 30),
                  TextButton(

                    child: Text(
                        "Go to Users Dashboard",
                        style: TextStyle(fontSize: 16, color: Colors.white)
                    ),
                    style: ButtonStyle(

                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(23)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepPurple),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.deepPurple),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: Colors.deepPurple),

                            )
                        )
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return  UserScreen  ();
                          },
                        ),
                      );
                    },

                  ),
                  const SizedBox(height: 10),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
                      width: size.width * 0.8,
                      child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: Color(0xFFD9D9D9),
                                height: 1.5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "OR",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                color: Color(0xFFD9D9D9),
                                height: 1.5,
                              ),
                            ),
                          ])),
                  TextButton(

                    child: Text(
                        "Control Team Settings ",
                        style: TextStyle(fontSize: 16, color: kPrimaryColor)
                    ),
                    style: ButtonStyle(

                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(23)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            kPrimaryLightColor),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            kPrimaryLightColor),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: kPrimaryLightColor),

                            )
                        )
                    ),
                    onPressed: () {


                    },

                  ),

                ]
            ))
    );
  }
}