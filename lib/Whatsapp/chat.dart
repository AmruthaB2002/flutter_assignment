import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChatScreen(),));
}
class ChatScreen extends StatelessWidget {
  var name = ['Sreya','Roopa','Kani','Krishna','Riya','Teena','Nidha','Hila','Meera','Hema'];
  var image=["https://images.unsplash.com/photo-1551847648-871b04de1de5?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1615125990475-b318176a49cc?auto=format&fit=crop&q=80&w=1910&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1626783658527-d7355850e35d?auto=format&fit=crop&q=80&w=2071&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1600356604581-e573833d02e3?auto=format&fit=crop&q=80&w=1888&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1591557343940-9cfd79914ac2?auto=format&fit=crop&q=80&w=1935&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1591557408399-9d10b58b9817?auto=format&fit=crop&q=80&w=1935&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1620504155085-d7b152a58e77?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1556833232-52da3e4bd5d8?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1481214110143-ed630356e1bb?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1485875437342-9b39470b3d95?auto=format&fit=crop&q=80&w=2073&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"];
  var time=['6:00 pm','5:25 pm','3:50 pm','2:00 pm','1:11 pm','12:10 pm','10:20 am','9:40 am','8:15 pm','8:00 am',];
  var msg=['Hello...','Hey','Are u there','Hey ammu..','Whats up','Bye','I will come tommorow','Babe','How are you', 'Dear..........'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: List.generate(10, (index) =>
            Card(
              child: ListTile(
                title: Text(name[index]),
                subtitle: Text(msg[index]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(image[index]),),
                trailing: Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(time[index]),
                      SizedBox(height: 10,),

                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            minRadius: 2,
                            maxRadius: 10,
                            backgroundColor: Colors.teal,
                            child: Text('2')
                        ),
                      )
                    ]
                ),
              ),
            )),
      ),
    );
  }
}