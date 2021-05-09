import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rma_lv4_user_list_bloc_app/blocs/user_list_bloc/user_list_bloc.dart';
import 'package:rma_lv4_user_list_bloc_app/injection_container.dart' as di;
import 'package:rma_lv4_user_list_bloc_app/ui/user_list_screen.dart';

void main() {
  di.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users App',
      home: BlocProvider(
        create: (context) => di.locator<UserListBloc>(),
        child: UserListScreen(),
      ),
    );
  }
}
