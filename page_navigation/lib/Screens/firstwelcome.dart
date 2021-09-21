
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/constants.dart';
import '/Screens/signup.dart';

class firstwelcome extends StatelessWidget {
  String name = "";
  String pass = "";
  String email="";
  firstwelcome({required this.name,required this.pass,required this.email});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

        backgroundColor: Colors.deepPurple[50],
        body: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(70),
            padding: const EdgeInsets.only(left: 50, top: 50, right: 50),
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
                  Text('Welcome ,' + '$name',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(height: 30),
                  const Text('Happy to join us ,Wish you a nice time',
                    textAlign: TextAlign.center,


                    style: TextStyle(color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.8,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: Text("Your username :  " + "$name",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,))
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.8,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: Text("Your email :  " + "$email",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,))
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: size.width * 0.8,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: Text("Your password:  " + "$pass",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black54,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,))
                    ),

                  ),
                  const SizedBox(height: 25),
                  TextButton(

                    child: Text(
                        "Save and continue ",
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
                        "Back",
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return  SignUpScreen  ();
                          },
                        ),
                      );

                    },

                  ),

                ]
            ))
    );
  }
}