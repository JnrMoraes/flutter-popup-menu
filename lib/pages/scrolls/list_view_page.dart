// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.black45,
            height: 9,
          );
        },
        itemCount: 999,
        itemBuilder: (context, index) {
          print('Item Carregado $index');
          return ListTile(
            title: Text('  Item $index'),
            subtitle: const Text('  Poder da lista no Flutter'),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/53837075?s=400&u=a9c99f4065d053dbf1901276f235cbe298922cfd&v=4'),
            ),
            trailing: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/53837075?s=400&u=a9c99f4065d053dbf1901276f235cbe298922cfd&v=4'),
            ),
          );
        },
      ),
      // body: ListView.builder(
      //   itemCount: 999,
      //   itemBuilder: (context, index) {
      //     print('Item Carregado $index');
      //     return ListTile(
      //       title: Text('  Item $index'),
      //       subtitle: const Text('  Poder da lista no Flutter'),
      //       leading: const CircleAvatar(),
      //     );
      //   },
      // ),
    );
  }
}
