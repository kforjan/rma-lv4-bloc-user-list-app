import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc() : super(UserListInitial());

  @override
  Stream<UserListState> mapEventToState(
    UserListEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
