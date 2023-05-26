// ignore_for_file: avoid_print

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    if (Platform.isIOS) {
                      return DialogCustomIos(context);
                    } else {
                      return DialogCustom(context);
                    }
                  },
                );
              },
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: const Align(child: Text('Simple Dialog Titulo')),
                        contentPadding: const EdgeInsets.all(10),
                        children: [
                          const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Align(
                                  child: Text('Simple Dialog Descrição'))),
                          TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Fechar Simple Dialog')),
                        ],
                      );
                    });
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      if (Platform.isIOS) {
                        return CupertinoAlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              mainAxis: Axis.vertical,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Deseja salvar?'),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Cancelar')),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Confirmar'))
                          ],
                        );
                      } else {
                        return AlertDialog(
                          title: const Text('Alert Dialog'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              mainAxis: Axis.vertical,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Deseja salvar?'),
                                )
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Cancelar')),
                            TextButton(
                                onPressed: () {},
                                child: const Text('Confirmar'))
                          ],
                        );
                      }
                    });
              },
              child: const Text(' Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                if (Platform.isIOS) {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return CupertinoTimerPicker(
                          onTimerDurationChanged: (_) {},
                        );
                      });
                } else {
                  final selectedTime = await showTimePicker(
                      context: context, initialTime: TimeOfDay.now());
                  print('Horário selecionado -> $selectedTime');
                }
              },
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                );
                print('Data selecionado -> $selectedDate');
              },
              child: const Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                showAboutDialog(
                    context: context,
                    applicationIcon: const Icon(Icons.flutter_dash));
              },
              child: const Text('About dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
