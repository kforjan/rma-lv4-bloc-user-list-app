import 'package:rma_lv4_user_list_bloc_app/data/network/rest_client.dart';
import 'package:rma_lv4_user_list_bloc_app/models/user.dart';

class UsersApi {
  UsersApi(this._restClient);

  final RestClient _restClient;

  Future<List<User>> getUsers() async {
    final List<dynamic> response = await _restClient
        .get('https://5e510330f2c0d300147c034c.mockapi.io/users');
    List<User> userList;
    response.forEach((element) {
      userList.add(User.fromJson(element));
    });
    return userList;
  }
}
