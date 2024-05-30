import 'package:htt/models/user.dart';
import 'package:htt/services/user_http_service.dart';

class UserController {
  final userHttpService = UserHttpService();
  List<User> _list = [];
  Future<List<User>> get list async {
    _list = await userHttpService.getUser();
    return [..._list];
  }
}
