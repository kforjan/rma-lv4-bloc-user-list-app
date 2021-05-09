import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rma_lv4_user_list_bloc_app/data/network/apis/users_api.dart';
import 'package:rma_lv4_user_list_bloc_app/models/user.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc(this._usersApi) : super(UserListInitial()) {
    this.add(GetUsers());
  }

  UsersApi _usersApi;

  @override
  Stream<UserListState> mapEventToState(
    UserListEvent event,
  ) async* {
    if (event is GetUsers) {
      yield UserListLoading();
      try {
        final userList = await _usersApi.getUsers();
        yield UserListLoaded(userList);
      } catch (e) {
        yield UserListLoadingFailed(message: 'Check your internet connection');
      }
    }
  }
}
