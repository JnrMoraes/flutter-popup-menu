// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  var materialBanner = MaterialBanner(
                    content:
                        const Center(child: Text('Usuário salvo com sucesso')),
                    backgroundColor: Colors.blueGrey,
                    actions: [
                      TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .hideCurrentMaterialBanner();
                          },
                          child: const Text('Cancelar'))
                    ],
                  );
                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialBanner);

                      Future.delayed(const Duration(seconds: 2), (){
                        ScaffoldMessenger.of(context)
                      .hideCurrentMaterialBanner();
                      });
                },
                child: const Text('Smiples SnackBar')),
            ElevatedButton(
                onPressed: () {
                  var snackBar = SnackBar(
                    content:
                        const Center(child: Text('Usuário salvo com sucesso')),
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
