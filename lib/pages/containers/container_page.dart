import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10,
                      offset: Offset(10, 10),
                    ),
                    BoxShadow(
                      color: Colors.green,
                      blurRadius: 10,
                      offset: Offset(-10, 10),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
