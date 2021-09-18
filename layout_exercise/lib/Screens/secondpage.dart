import 'package:flutter/material.dart';


class secondpage extends StatelessWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[50],
        body:Center(

            child:ListView(

                children: <Widget>[
                  Padding(padding: const EdgeInsets.symmetric(vertical:200),
                      child:Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white),
                                height: 200,
                                width:250,
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,


                                  children: [
                                    const SizedBox(height: 20),
                                    Icon(Icons.g_translate,color:Colors.black87,size:80),
                                    const SizedBox(height: 20),
                                    Text("Choose conversation language ",style: TextStyle(color:Colors.purple[700],fontWeight: FontWeight.bold, fontSize: 14.0),),
                                    const SizedBox(height: 10),
                                    Text("Also choose accent",style: TextStyle(color:Colors.orange[300],fontWeight: FontWeight.normal, fontSize: 12.0),)
                                  ],

                                )),
                            const SizedBox(width: 10),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white),
                                height: 200,
                                width:250,
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,


                                  children: [
                                    const SizedBox(height: 20),
                                    Icon(Icons.closed_caption,color:Colors.black87,size:80),
                                    const SizedBox(height: 20),
                                    Text("Subtitle option ",style: TextStyle(color:Colors.purple[700],fontWeight: FontWeight.bold, fontSize: 14.0),),
                                    const SizedBox(height: 10),
                                    Text("Mark new words",style: TextStyle(color:Colors.orange[300],fontWeight: FontWeight.normal, fontSize: 12.0),)
                                    ,


                                ]))

                          ]
                      )

                  )


                ]) )
    );

  }
}
