import 'package:flutter/material.dart';
import '/Screens/secondpage.dart';

class launch extends StatelessWidget {
  const launch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[50],
    body:Center(

      child:ListView( 

          children: <Widget>[
            Padding(padding: const EdgeInsets.all(50),
            child:Column(
                children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white),
                height: 300,
                width:400,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,


                    children: [
                      const SizedBox(height: 60),
                      Icon(Icons.support_agent,color:Colors.black87,size:100),
                      const SizedBox(height: 20),
                      Text("Make your conversation with our autosystem  ",style: TextStyle(color:Colors.purple[700],fontWeight: FontWeight.bold, fontSize: 16.0),),
                      const SizedBox(height: 12),
                      Text("Conversation topic can be selected",style: TextStyle(color:Colors.orange[300],fontWeight: FontWeight.normal, fontSize: 14.0),)
                    ],

                  )),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white),
                    height: 300,
                    width:400,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,


                    children: [
                      const SizedBox(height: 60),
                      Icon(Icons.face,color:Colors.black87,size:100),
                      const SizedBox(height: 20),
                      Text("Make your conversation with our team experts  ",style: TextStyle(color:Colors.purple[700],fontWeight: FontWeight.bold, fontSize: 16.0),),
                      const SizedBox(height: 12),
                      Text("Choose your instructor nationality",style: TextStyle(color:Colors.orange[300],fontWeight: FontWeight.normal, fontSize: 14.0),)
                    ,const SizedBox(height: 15),
                      TextButton(

                        child: Text(
                            "Next",

                            style: TextStyle(fontSize: 12,color: Colors.black87,)
                        ),
                        style: ButtonStyle(

                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(30)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white) ,
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.0),
                                  side: const BorderSide(color: Colors.white),

                                )
                            )
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return secondpage ();
                              },
                            ),
                          );
                        },

                      ),],

                  ))

            ]
            )

            )


  ]) )
    );

  }
}
