import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  const SingleChildScrollViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Single Child'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.amber,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.blueGrey,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.yellowAccent,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
