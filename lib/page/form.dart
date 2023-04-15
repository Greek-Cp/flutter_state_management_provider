import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_state_management_provider/controller/controller.dart';
import 'package:flutter_state_management_provider/model/akun.dart';
import 'package:flutter_state_management_provider/page/view_data.dart';
import 'package:provider/provider.dart';

class PageForm extends StatelessWidget {
  static String? routeName = "/page_form";
  TextEditingController namaController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final AkunCont = Provider.of<AkunController>(context);
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: namaController,
            decoration: InputDecoration(
              hintText: "Nama",
            ),
          ),
          TextField(
            controller: deskripsiController,
            decoration: InputDecoration(
              hintText: "Deskripsi",
            ),
          ),
          ElevatedButton(
              onPressed: () => {
                    AkunCont.addAkun(Akun(
                        nama: namaController.text,
                        deskripsi: deskripsiController.text)),
                  },
              child: Text("Tambahkan Item")),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.pushNamed(context, ViewData.routeName.toString())},
              child: Text("Cek List data"))
        ],
      ),
    );
  }
}
