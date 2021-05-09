import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rma_lv4_user_list_bloc_app/blocs/user_list_bloc/user_list_bloc.dart';
import 'package:rma_lv4_user_list_bloc_app/models/user.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<UserListBloc, UserListState>(
        listener: (context, state) {
          if (state is UserListLoadingFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is UserListLoaded) {
            return _buildUserList(state.userList);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _buildUserList(List<User> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) => Text(users[index].name),
    );
  }
}
