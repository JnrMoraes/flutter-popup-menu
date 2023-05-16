import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  row_columns,
  media_query,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages valueSelect) {
              switch (valueSelect) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.row_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.row_columns,
                  child: Text('Rowns & Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('Media Query'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
