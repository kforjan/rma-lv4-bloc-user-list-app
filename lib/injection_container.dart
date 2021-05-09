import 'package:get_it/get_it.dart';
import 'package:rma_lv4_user_list_bloc_app/blocs/user_list_bloc/user_list_bloc.dart';
import 'package:rma_lv4_user_list_bloc_app/data/network/apis/users_api.dart';
import 'package:rma_lv4_user_list_bloc_app/data/network/rest_client.dart';

final locator = GetIt.instance;

setup() {
  locator.registerFactory(() => UserListBloc());
  locator.registerLazySingleton(() => RestClient());
  locator.registerLazySingleton(() => UsersApi());
}
