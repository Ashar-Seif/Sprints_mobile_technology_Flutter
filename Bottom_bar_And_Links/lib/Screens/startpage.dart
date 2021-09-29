import 'package:flutter/material.dart';
import '/model/user.dart';
import '/services/userService.dart';
import '/Screens/UserDetails.dart';

class StartPage extends StatefulWidget {


  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
        body: isLoading ? Center(
          child: CircularProgressIndicator(),
        )
            : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: usersList.length,
            itemBuilder: (BuildContext context, int index) {
              String username = "${usersList[index].name}";
              int userindex = index;

              return Card(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.people,
                          color: Colors.blue,
                          size: 40,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Text(username,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return UserDetails(userindex);
                                  },
                                ),
                              );
                            },
                          )),
                    ],
                  ));
            })
    );
  }
}
