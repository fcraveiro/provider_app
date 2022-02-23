import 'package:get/get.dart';

import '/services/constants.dart';
import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  State<Pagina2> createState() => _Pagina2State();
}

List lista = [];

class _Pagina2State extends State<Pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Text(lista.length.toString()),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                setState(() {
                  lista.add(1);
                });
              },
              child: const Text('Somar 1'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                setState(() {
                  lista.remove(1);
                });
              },
              child: const Text('Retirar 1'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: elevatedEstilo,
              onPressed: () {
                Get.toNamed('/pagina1/');
              },
              child: const Text('Pagina 1'),
            ),
          ],
        ),
      ),
    );
  }
}
