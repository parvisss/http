import 'package:htt/models/product.dart';
import 'package:htt/services/product_http_service.dart';

class ProductController {
  final productHttpService = ProductHttpService();
  List<Product> _list = [];
  Future<List<Product>> get list async {
    _list = await productHttpService.getProduct();

    return [..._list];
  }
}
