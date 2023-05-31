import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {

  const ColorsPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {

    // const cor = Colors.blueGrey;
  //  final cor = Colors.blueGrey.withOpacity(0.5);
  //  const cor = Color.fromRGBO(0, 0, 115, 1);
   const cor = Color(0XFF45D1FD); //0XFF = #
       return Scaffold(
           appBar: AppBar(title: const Text('Cores'),),
           body: Center(
             child: Container(
              width: 400,
              height: 400,
              color: cor,
             ),
           ),
       );
  }
}