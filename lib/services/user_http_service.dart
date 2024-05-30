import 'dart:convert';

import 'package:htt/models/user.dart';
import 'package:http/http.dart' as http;

class UserHttpService {
  Future<List<User>> getUser() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/users");
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    print(data);
    List<dynamic> loadUsers0 = data;

    List<User> loadUsers = [];

    for (var i = 0; i < loadUsers0.length; i++) {
      if (loadUsers0[i] != null) {
        loadUsers.add(User.fromJson(loadUsers0[i]));
      }
    }

    return loadUsers;
  }
}
