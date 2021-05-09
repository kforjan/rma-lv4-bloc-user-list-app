part of 'user_list_bloc.dart';

@immutable
abstract class UserListState {}

class UserListInitial extends UserListState {}

class UserListLoaded extends UserListState {
  UserListLoaded(this.userList);

  final List<User> userList;
}

class UserListLoadingFailed extends UserListState {
  UserListLoadingFailed({this.message});

  final String message;
}
