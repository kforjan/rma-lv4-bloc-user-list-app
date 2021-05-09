part of 'user_list_bloc.dart';

@immutable
abstract class UserListEvent {}

class GetUsers extends UserListEvent {}
