import 'package:htt/models/categorie.dart';
import 'package:htt/services/categorie_http_service.dart';

class CategoryController {
  final categoryHttpService = CategoryHttpService();
  List<Categorie> _list = [];
  Future<List<Categorie>> get list async {
    _list = await categoryHttpService.getCategory();
    return [..._list];
  }
}

//await categoryHttpService.getCategory();