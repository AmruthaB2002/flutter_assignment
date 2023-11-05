import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: call(),));
}
class call extends StatelessWidget {
  var name = ['Create call link','Amith','Kani','Subin','Reheem','Teena','Riya','Teena','Nidha','Hila'];
  var image=["https://images.unsplash.com/photo-1624355834717-2a526f6522ab?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1610088441520-4352457e7095?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
     "https://images.unsplash.com/photo-1626783658527-d7355850e35d?auto=format&fit=crop&q=80&w=2071&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1600356604581-e573833d02e3?auto=format&fit=crop&q=80&w=1888&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1559386484-97dfc0e15539?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1591557408399-9d10b58b9817?auto=format&fit=crop&q=80&w=1935&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
 "https://images.unsplash.com/photo-1591557343940-9cfd79914ac2?auto=format&fit=crop&q=80&w=1935&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1591557408399-9d10b58b9817?auto=format&fit=crop&q=80&w=1935&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1620504155085-d7b152a58e77?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1556833232-52da3e4bd5d8?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];
  

  var msg=['Share a link for your WhatsApp call','2 minutes ago','30 minutes ago','35 minutes ago','Today,3:00 pm','Today,3:10 pm',' Today,2:00 pm','Today,11:00 am','Yestrday,1:00 pm ', 'Toady,2:45 pm'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(

        children: List.generate(10, (index) => Card(
          child: ListTile(
              title: Text(name[index]),
              subtitle: Text(msg[index]),
              leading: CircleAvatar(backgroundImage: NetworkImage(image[index]),),
              trailing: Icon(Icons.phone,color: Colors.green,)
          ),
        )),
      ),
    );
  }
}