import 'package:dio/dio.dart';
import 'package:flutter_demo/model/user.dart';

 Future<List<User>> getUsers() async {
   List<User> users=<User>[];
  try {
    var response = await Dio().get('https://jsonplaceholder.typicode.com/users');
    if(response.statusCode==200){
      List datas= response.data;
      datas.forEach((element) {
      User user=  User.fromJson(element);
      users.add(user);
      });
    }
    print(response);
  } catch (e) {
    print(e);
  }
  return users;
}