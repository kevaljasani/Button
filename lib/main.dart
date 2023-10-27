import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: first(),));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(),
      
      // body: ElevatedButton(onPressed: () {
      //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("hello"),
      //   action: SnackBarAction(label: "click", onPressed: () {
      //     Navigator.pop(context);
      //   },),));
      // }, child: Text("submit")),
      
      body: Column(children: [
        ElevatedButton(onPressed: () {
          showDialog(
            barrierColor: Colors.transparent,
            barrierDismissible: false,
            context: context, builder: (context) {
            return AlertDialog(

              title: Text("win......"),

              actions: [
                Row(children: [
                  TextButton(onPressed: () {

                  }, child: Text("OK")),

                  TextButton(onPressed: () {

                  }, child: Text("CANCEL")),
                  
                  IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.delete)),
                  
                  IconButton(onPressed: () {
                    
                  }, icon: Icon(Icons.edit))
                ],)
              ],
            );
          },);
        }, child: Text("submit"))
      ],
      ),
    );
  }
}
