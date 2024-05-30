import 'dart:convert';

import 'package:htt/models/categorie.dart';
import 'package:htt/models/user.dart';
import 'package:http/http.dart' as http;

class CategoryHttpService {
  Future<List<Categorie>> getCategory() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/categories");
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    print(data);
    List<dynamic> loadCategory0 = data;

    List<Categorie> loadCategory = [];

    for (var i = 0; i < loadCategory0.length; i++) {
      if (loadCategory0[i] != null) {
        loadCategory.add(Categorie.fromJson(loadCategory0[i]));
      }
    }

    return loadCategory;
  }
}
