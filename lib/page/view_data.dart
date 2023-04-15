import 'package:flutter/material.dart';
import 'package:flutter_state_management_provider/controller/controller.dart';
import 'package:flutter_state_management_provider/controller/controller.dart';
import 'package:flutter_state_management_provider/model/akun.dart';
import 'package:provider/provider.dart';

class ViewData extends StatelessWidget {
  static String? routeName = "/page_view_data";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final AkunCont = Provider.of<AkunController>(context);
    return Scaffold(
      body: Center(
          child: ListView.builder(
        itemCount: AkunCont.getListAKun.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.yellow,
            child: ListTile(
              title: Text(AkunCont.getListAKun[index].nama.toString()),
              subtitle: Text(AkunCont.getListAKun[index].deskripsi.toString()),
            ),
          );
        },
      )),
    );
  }
}
