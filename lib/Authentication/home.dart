
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Home(),));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid = "";
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         leading: const Icon(Icons.menu),centerTitle: true,
       backgroundColor: Colors.brown.shade100,
       
       title: Text('On Chat',
       style: GoogleFonts.eater
       (
              fontSize: 25,
              fontWeight: FontWeight.w200,
            ),),
       actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
         
          Icon(Icons.notification_add),
          SizedBox(
            width: 15,
          ),

          
        

       
      //             IconButton(
      //               icon: const Icon(Icons.logout_sharp),
      //               onPressed: (contex) => LoginScreen(),
      //               // () async {
      //               //   await FirebaseAuth.instance.signOut();
      //               //   Navigator.pushReplacement(
      //               //     context,
      //               //     MaterialPageRoute(
      //               //       builder: (context) => LoginScreen(),
      //               //     ),
      //               //   );
      //  ),
       ]
       ),
      body:Container(
  //       child: Center(
  //       child: Drawer(child: ListView( 

  //         padding: EdgeInsets.zero, 

  //         children: [ 

  //            DrawerHeader( 

  //             decoration: const BoxDecoration( 

  //               color: Colors.green, 

  //             ), 
  //             child: Text("Drawer"), 


  //            ),

  //             ListTile( 

  //             leading: IconButton(onPressed: ()async{
  //               await FirebaseAuth.instance.signOut();
  //                     Navigator.pushReplacement(
  //                       context,
  //                       MaterialPageRoute(
  //                         builder: (context) => LoginScreen(),
  //                       ),
  //                     );
  //             }, icon: const Icon(Icons.login_sharp)

  //             //title: const Text(' My Profile '), 

  //             //onTap: () { 

  //               //Navigator.pop(context); 

  //             //}, 

  //           ),),
  //       ]),
  //       ),

  // child: Center( child: Container(
  
          decoration: const BoxDecoration(
  
            image: DecorationImage(fit: BoxFit.cover,
  
              image: NetworkImage("https://images.unsplash.com/photo-1517017385270-bd3aa4f39d9e?auto=format&fit=crop&q=80&w=2071&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
  
        
  
        //appBar: AppBar(
  
        //   backgroundColor: Colors.indigo[900],
  
        //   title: Text('Home'),
  
        // ),
  
        child: Center(
  
          child: Center(
  
            child: Column(
  
              mainAxisAlignment: MainAxisAlignment.center,
  
              children: [
  
                const Text(
  
                  "Hello world...",
  
                  style: TextStyle(
  
                    color: Colors.brown,
  
                    fontSize: 50,
  
                  ),
  
                ),
  
                  Container(
                    child: Icon(Icons.logout_sharp),
                  ),
                
  

                  //mainAxisAlignment: MainAxisAlignment.center,
  
                  //children: [
  
                    // Text(
  
                    //   "Logout",
  
                    //   style: TextStyle(
  
                    //     color: Colors.red,
  
                    //     fontSize: 30,
  
                    //   ),
  
                    //),
  
                     // child: const Center(
  
                    //  child: IconButton(
  
                    //  child: Icon(Icons.logout_sharp),
  
                    //   onPressed: () async {
  
                    //     await FirebaseAuth.instance.signOut();
  
                    //     Navigator.pushReplacement(
  
                    //       context,
  
                    //       MaterialPageRoute(
  
                    //         builder: (context) => LoginScreen(),
  
                    //       ),
  
                    //     );
  
                    //   },
  
                    // ),
  
                    //  )
  
                  //]
  
                
])))));
//)));

  }
}