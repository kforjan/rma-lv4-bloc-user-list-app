import 'package:flutter/material.dart';
import 'package:rma_lv4_user_list_bloc_app/data/network/apis/users_api.dart';
import 'package:rma_lv4_user_list_bloc_app/injection_container.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: locator<UsersApi>().getUsers(),
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.done
                ? ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) =>
                        Text(snapshot.data[index].name))
                : Container(),
      ),
    );
  }
}
