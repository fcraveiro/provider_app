import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/paginas/tab_controller.dart';

import '/services/constants.dart';
import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  State<Pagina2> createState() => _Pagina2State();
}

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
            Consumer<Valor>(
                builder: (context, value, child) =>
                    Text(value.lista.length.toString())),
            const SizedBox(
              height: 50,
            ),
            Consumer<Valor>(
              builder: (context, value, child) => ElevatedButton(
                style: elevatedEstilo,
                onPressed: () {
                  value.addLista(1);
                },
                child: const Text('Somar 1'),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Consumer<Valor>(
              builder: (context, value, child) => ElevatedButton(
                style: elevatedEstilo,
                onPressed: () {
                  value.removeLista(1);
                },
                child: const Text('Retirar 1'),
              ),
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
