import '/model/user.dart';
import 'package:dio/dio.dart';


class UserService {
  String baseUrl = "https://jsonplaceholder.typicode.com";
  String userLink = "/users";


  Future<List<User>> getUser() async {
    List<User> usersList = [];
    Response response = await Dio().get('$baseUrl$userLink');
    var data = response.data;
    data.forEach((element) {
      User myUser=User.fromJson(element);
      usersList.add(myUser);
    });
    return usersList;
  }
}
