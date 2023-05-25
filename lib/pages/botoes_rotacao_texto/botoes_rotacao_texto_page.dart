// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões rotação do texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.amber,
                      child: const Text('Antonio Roberto')),
                ),
                const Icon(Icons.ac_unit_sharp)
              ],
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                padding: const EdgeInsets.all(20),
                minimumSize: const Size(10, 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
              child: const Text('Salvar'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app_rounded),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shadowColor: Colors.lightGreen,
                minimumSize: const Size(60, 60),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                ),
              ),
              child: const Icon(Icons.airplanemode_active),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.airline_seat_flat),
              label: const Text('Modo avião'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.teal),
                  minimumSize: MaterialStateProperty.resolveWith(
                    (states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Size(100, 100);
                      } else if (states.contains(MaterialState.hovered)) {
                        return const Size(150, 150);
                      }
                      return const Size(50, 50);
                    },
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black54;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.amber;
                    }
                    return Colors.red;
                  })),
              child: const Icon(Icons.airplanemode_active),
            ),
            const SizedBox(
              height: 10,
            ),
            const InkWell(
              child: Text('Ink'),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: const Text('Gesture detector'),
              onTap: () => print('Gesture clicado'),
              onVerticalDragStart: (details) => print('Start $details'),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.yellow, Colors.tealAccent],
                  ),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0, 5),
                        color: Colors.pink)
                  ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Salvar',
                    style: TextStyle(color: Color.fromARGB(255, 252, 2, 186)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
