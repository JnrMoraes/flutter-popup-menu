import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:study/pages/containers/container_page.dart';
import 'package:study/pages/media_query/media_query_page.dart';

import 'pages/home/home_page.dart';
import 'pages/rows_columns/row_column_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: false, //!kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
      },
    );
  }
}
