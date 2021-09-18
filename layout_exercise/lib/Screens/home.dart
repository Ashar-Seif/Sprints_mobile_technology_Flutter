import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/Screens/page.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[50],
      body:Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(70),
        padding: const EdgeInsets.only(left: 50, top: 50, right: 50),
        height: double.infinity,
        width:double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30), //border corner radius
          boxShadow:[
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 5, //spread radius
              blurRadius: 7, // blur radius
              offset: const Offset(0, 2), // changes position of shadow
            ),
            //you can set more BoxShadow() here
          ],
        ),

        child:Column(
            children: <Widget>[

              SvgPicture.asset(
                "assets/chat.svg",height:300,width: 200 ),

              const SizedBox(height: 20),
              const Text('Enjoy a nice conversation',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              const SizedBox(height: 20),
              const Text('Make a conversation with language expert and level up your conversation skills',
                textAlign: TextAlign.center,


                style: TextStyle(color:Colors.grey,fontWeight: FontWeight.normal, fontSize: 16.0),
              ),
              const SizedBox(height: 50),
              TextButton(

                  child: Text(
                      "get started".toUpperCase(),
                      style: TextStyle(fontSize: 16,color: Colors.white)
                  ),
                  style: ButtonStyle(

                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(23)),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple) ,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          return launch ();
                        },
                      ),
                    );
                  },

              ),




            ]
        )


      ),
    );
  }
}