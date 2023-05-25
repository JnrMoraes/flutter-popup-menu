import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:study/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:study/pages/containers/container_page.dart';
import 'package:study/pages/layout_builder/layout_builder_page.dart';
import 'package:study/pages/media_query/media_query_page.dart';
import 'package:study/pages/scrolls/list_view_page.dart';
import 'package:study/pages/scrolls/single_child_scroll_view_page.dart';

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
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/scroll/single_child': (_) => const SingleChildScrollViewPage(),
        '/scroll/list_view': (_) => const ListViewPage(),
        
      },
    );
  }
}
