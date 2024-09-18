import 'package:flutter/material.dart';

class CountItem extends StatelessWidget {
  final int count;
  const CountItem({super.key,required this.count});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("$count",style: TextStyle(fontSize: 25),));
  }
}