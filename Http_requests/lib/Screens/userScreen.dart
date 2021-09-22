import 'package:flutter/material.dart';
import 'package:page_navigation/constants.dart';
import '/model/user.dart';
import '/services/userService.dart';
import '/Screens/UserDetails.dart';



class UserScreen extends StatefulWidget {

  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<User> usersList = [];
  bool isLoading = true;
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
          title: Text("Welcome to Users Dashbord" ),
          backgroundColor: kPrimaryColor,
          foregroundColor: kPrimaryLightColor,
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.all(35),
            child:
        ListView.builder(

                itemCount: usersList.length,
                itemBuilder: (BuildContext context, int index) {
                 String username="${usersList[index].name}";
                 int userindex=index;

                  return ListTile(
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:GestureDetector(
                          child: Text(username,style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return UserDetails (userindex);
                                },
                              ),
                            );
                          },

                        )

                      ),
                      trailing: Icon(Icons.people,color:Colors.blue,));
                },
        ) ));
  }
}
