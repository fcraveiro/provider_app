import 'package:flutter/material.dart';

class Valor extends ChangeNotifier {
  List lista = [];

  addLista(int index) {
    lista.add(1);
    notifyListeners();
  }

  removeLista(int index) {
    lista.remove(1);
    notifyListeners();
  }
}
