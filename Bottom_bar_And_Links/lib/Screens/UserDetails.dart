import 'package:flutter/material.dart';
import 'package:page_navigation/constants.dart';
import '../utils.dart';
import '/model/user.dart';
import '/services/userService.dart';

import '/Screens/UserScreen.dart';



class UserDetails extends StatefulWidget {
 int index=0;
 String name="";
  UserDetails(this.index);
  @override
  _UserDetailsState createState() => _UserDetailsState(index);
}

class _UserDetailsState extends State<UserDetails> {

 int userindex;
 bool isLoading = true;
  List<User> usersList = [];

  _UserDetailsState(this.userindex);

  getUserList() async {
    usersList = await UserService().getUser();
    isLoading = false;
    setState(() {});

  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: Text(" User Information" ),
          backgroundColor: kPrimaryColor,
          foregroundColor: kPrimaryLightColor,
        ),
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : Container(

        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
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
              const SizedBox(height: 10),
              Text('User Data' ,
                textAlign: TextAlign.right,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(height: 10),
              const Text('Joined during last month',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0),
              ),
              const SizedBox(height: 10),

                Text("Name: ${usersList[userindex].name}",style: TextStyle(color:Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
              const SizedBox(height: 10),

              Text("Username: ${usersList[userindex].username}",style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
              const SizedBox(height: 10),

                Text("ID: ${usersList[userindex].id}",style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),
              const SizedBox(height:10),
            InkWell (onTap: (){
              launchURL("mailto:${usersList[userindex].email}?subject=newsubject&body=newemail");
            },
                child:Text("Email: ${usersList[userindex].email}",style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15)),),
              const SizedBox(height: 10),
              Text("Address: ${usersList[userindex].address.street},${usersList[userindex].address.suite},${usersList[userindex].address.city}",style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
              const SizedBox(height: 10),
            InkWell (onTap: (){
              launchURL("tel:${usersList[userindex].phone}");
            },
              child:Text("Phone: ${usersList[userindex].phone}",style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),),

              const SizedBox(height:10),
              Text("Company: ${usersList[userindex].company.name},${usersList[userindex].company.catchPhrase},${usersList[userindex].company.bs}",style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
              const SizedBox(height: 10),
              InkWell (onTap: (){
                launchURL("http://${usersList[userindex].website}");
              },
              child: Text("Website: ${usersList[userindex].website}",style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),),
              const SizedBox(height: 10),
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
                        return  UserScreen  ();
                      },
                    ),
                  );

                },

              ),









            ]
        )));
  }
}
