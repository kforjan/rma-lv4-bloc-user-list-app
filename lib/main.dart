import 'package:flutter/material.dart';
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
      home: UserListScreen(),
    );
  }
}
