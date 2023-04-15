import 'package:flutter/material.dart';
import 'package:flutter_state_management_provider/controller/controller.dart';
import 'package:flutter_state_management_provider/model/akun.dart';
import 'package:flutter_state_management_provider/page/form.dart';
import 'package:flutter_state_management_provider/page/view_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AkunController(),
      child: MaterialApp(
        initialRoute: PageForm.routeName.toString(),
        routes: {
          PageForm.routeName.toString(): (context) => PageForm(),
          ViewData.routeName.toString(): (context) => ViewData()
        },
      ),
    );
  }
}
