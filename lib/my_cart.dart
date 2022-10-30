// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => null,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    onPressed: () => null,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
