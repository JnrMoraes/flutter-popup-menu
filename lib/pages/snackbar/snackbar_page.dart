// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Center(child: Text('Usuário salvo com sucesso')),
                    backgroundColor: Colors.blueGrey,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Smiples SnackBar')),
            ElevatedButton(
                onPressed: () {
                  var snackBar = SnackBar(
                    content: const Center(child: Text('Usuário salvo com sucesso')),
                    backgroundColor: Colors.blueGrey,
                    action: SnackBarAction(
                        label: 'Desfazer',
                        onPressed: () {
                          print('Snackbar clicada!');
                        }),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Action SnackBar')),
          ],
        ),
      ),
    );
  }
}
