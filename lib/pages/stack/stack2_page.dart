import 'package:flutter/material.dart';

class Stack2Page extends StatelessWidget {
  const Stack2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack2'),
      ),
      body: Stack(
        children: [
         
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1685297965194-5eb9b8d51a05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80'),
              fit: BoxFit.cover,
            )),
          ), Container(
            color: Colors.white24,
          ),
          Positioned(
            bottom: 48,
            left: 10,
            right: 10,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 18,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Vancouver',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                        'Vancouver (/vænˈkuːvər/ van-KOO-vər) is a major city in western Canada, located in the Lower Mainland region of British Columbia. As the most populous city in the province, the 2021 Canadian census recorded 662,248 people in the city, up from 631,486 in 2016.'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
