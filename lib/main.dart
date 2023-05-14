import 'package:flutter/material.dart';
import 'package:study/pages/containers/container_page.dart';

import 'pages/home/home_page.dart';
import 'pages/rows_columns/row_column_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowColumnPage(),

      },
    );
  }
}
