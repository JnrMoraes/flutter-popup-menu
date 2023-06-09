import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'pages/cidades/cidades_page.dart';
import 'pages/circle_avatar/circle_avatar_page.dart';
import 'pages/colors/colors_page.dart';
import 'pages/containers/container_page.dart';
import 'pages/dialogs/dialogs_page.dart';
import 'pages/formulario/formulario_page.dart';
import 'pages/home/home_page.dart';
import 'pages/layout_builder/layout_builder_page.dart';
import 'pages/material_banner/material_banner_page.dart';
import 'pages/media_query/media_query_page.dart';
import 'pages/rows_columns/row_column_page.dart';
import 'pages/scrolls/list_view_page.dart';
import 'pages/scrolls/single_child_scroll_view_page.dart';
import 'pages/snackbar/snackbar_page.dart';
import 'pages/stack/stack2_page.dart';
import 'pages/stack/stack_page.dart';

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
      theme: ThemeData(
        primaryColor: Colors.amberAccent,
      ),
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/scroll/single_child': (_) => const SingleChildScrollViewPage(),
        '/scroll/list_view': (_) => const ListViewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbar': (_) => const SnackbarPage(),
        '/forms': (_) => const FormularioPage(),
        '/cidades': (_) => const CidadesPage(),
        '/stack': (_) => const StackPage(),
        '/stack/page2': (_) => const Stack2Page(),
        '/bottom_navigator_bar': (_) => const BottomNavigatorBarPage(),
        '/circle_avatar': (_) => const CircleAvatarPage(),
        '/colors': (_) => const ColorsPage(),
        '/material_banner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
