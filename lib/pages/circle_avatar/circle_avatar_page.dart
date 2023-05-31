import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: const [
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: SizedBox(
          //     width: 100,
          //     height: 100,
          //     child: CircleAvatar(
          //       backgroundImage: NetworkImage(
          //           'https://avatars.githubusercontent.com/u/53837075?v=4'),
          //     ),
          //   ),
          // ),
          _ImageAvatar(
            urlImag: 'https://avatars.githubusercontent.com/u/53837075?v=4',
          ),
          _ImageAvatar(
            urlImag:
                'https://i.pinimg.com/236x/7f/15/a1/7f15a1633a2b72516ab9133139ac0adb.jpg',
          ),
        ],
      ),
    );
  }
}

class _ImageAvatar extends StatelessWidget {
  const _ImageAvatar({
    required this.urlImag,
  });
  final String urlImag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Colors.indigo,
                Colors.amber,
                Colors.blue,
                Colors.teal,
                Colors.yellowAccent,
                Colors.indigo,
              ], begin: Alignment.topCenter),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(urlImag),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.red,
                ),
                child: const Text(
                  'AO VIVO',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
