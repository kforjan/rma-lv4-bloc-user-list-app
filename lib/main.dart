import 'package:flutter/material.dart';
import 'package:rma_lv4_user_list_bloc_app/ui/user_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: UserListScreen(),
    );
  }
}
