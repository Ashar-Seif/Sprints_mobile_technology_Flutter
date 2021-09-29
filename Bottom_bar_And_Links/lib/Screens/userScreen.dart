import 'package:flutter/material.dart';
import 'package:page_navigation/Screens/profile.dart';
import 'package:page_navigation/Screens/settings.dart';
import 'package:page_navigation/Screens/startpage.dart';
import 'package:page_navigation/constants.dart';
import '/model/user.dart';
import '/services/userService.dart';
import '/Screens/UserDetails.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  int currentIndex=0;

  List<Widget> pages =[
  StartPage(),
  SettingScreen(),
    ProfilePage(),
];

  void _onItemTapped (int index){
    setState((){
      currentIndex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap:_onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:'Home',
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:'Settings',
            backgroundColor: Colors.blue,

          ),  BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'profile',
            backgroundColor: Colors.blue,

          ),
        ],
      ) ,
        backgroundColor: Colors.deepPurple[50],
        appBar: AppBar(
          title: Text("Welcome to Users Dashbord"),
          backgroundColor: kPrimaryColor,
          foregroundColor: kPrimaryLightColor,
        ),
        body:pages[currentIndex],
    );  }
}
