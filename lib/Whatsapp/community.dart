
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: comm(),));
}
class comm extends StatelessWidget {
  // var name = ['New community'];
  // var image=['https://images.unsplash.com/photo-1485875437342-9b39470b3d95?auto=format&fit=crop&q=80&w=2073&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:Text("Community"))
      // body: ListView(

      //   children: List.generate(1, (index) => Card(
      //     child: ListTile(
      //       title: Text(name[index]),
      //       leading: CircleAvatar(backgroundImage: NetworkImage(image[index]),),
      //     ),
          
      //   )),
      // ),

      
    );
  }
}