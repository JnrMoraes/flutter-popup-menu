import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    print('HEIGHT -> ${mediaQuery.size.height}');
    print('WIDTH -> ${mediaQuery.size.width}');
    print('ORIENTATION -> ${mediaQuery.orientation}');
    print('MINI BAR ABOVE -> ${mediaQuery.padding.top}');
    print('APP BAR without custom -> $kToolbarHeight');

    var appBar = AppBar(
      title: const Text('Media Query'),
    );

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blueGrey,
            width: mediaQuery.size.width * .50,
            height: heightBody * .5,
          ), Container(
            color: Colors.blueAccent,
            width: mediaQuery.size.width,
            height: heightBody * .5,
          ),
        ],
      )),
    );
  }
}
