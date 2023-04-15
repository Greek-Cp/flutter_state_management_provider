import 'package:flutter/material.dart';
import 'package:flutter_state_management_provider/model/akun.dart';

class AkunController extends ChangeNotifier {
  List<Akun> listAkun = [];
  void addAkun(Akun akun) {
    listAkun.add(akun);
    notifyListeners();
    print("Data Berhasil Ditambahkan");
  }

  AkunController() {
    listAkun.add(Akun(nama: "InitializeData One"));
  }
  List<Akun> get getListAKun => listAkun;
}
