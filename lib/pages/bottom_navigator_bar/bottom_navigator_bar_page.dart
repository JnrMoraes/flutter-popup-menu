import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigator bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 15,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Pagina 1', icon: Icon(Icons.no_sim_sharp)),
          BottomNavigationBarItem(
              label: 'Pagina 2', icon: Icon(Icons.arrow_circle_down)),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
