import 'dart:convert';

import 'package:htt/models/product.dart';
import 'package:http/http.dart' as http;

class ProductHttpService {
  Future<List<Product>> getProduct() async {
    Uri url = Uri.parse("https://api.escuelajs.co/api/v1/products");
    final response = await http.get(url);
    final data = jsonDecode(response.body);
    print(data);
    List<dynamic> loadProducts0 = data;

    List<Product> loadProducts = [];

    for (var i = 0; i < loadProducts0.length; i++) {
      if (loadProducts0[i] != null) {
        loadProducts.add(Product.fromJson(loadProducts0[i]));
      }
    }

    return loadProducts;
  }
}
