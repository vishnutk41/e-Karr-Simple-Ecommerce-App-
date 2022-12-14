// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ItemCount extends StatefulWidget {
  const ItemCount({super.key});

  @override
  State<ItemCount> createState() => _ItemCountState();
}

class _ItemCountState extends State<ItemCount> {
   int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
    void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Container(
width: 40,height: 30,
child: IconButton(onPressed: _decrementCounter, padding: EdgeInsets.zero,
icon: Icon(Icons.remove),),
decoration: BoxDecoration(
border: Border.all(color: Color.fromARGB(255, 125, 125, 125)),
  borderRadius: BorderRadius.circular(15)
),
       ),
       SizedBox(width: 5,),
       Text( '$_counter',
       style: TextStyle(fontSize: 20),),
       SizedBox(width: 5,),

        Container(
width: 40,height: 30,
child: IconButton(onPressed: _incrementCounter, padding: EdgeInsets.zero,
icon: Icon(Icons.add),),
decoration: BoxDecoration(
border: Border.all(color: Color.fromARGB(255, 125, 125, 125)),
  borderRadius: BorderRadius.circular(15)
),
       ),
      ],
    );
  }
}