import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,
    home: WhatsApp(),));
}


class WhatsApp extends StatelessWidget {
  
  const WhatsApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          // child:ShaderMask(
          //   blendMode: BlendMode.srcIn,
          //   shaderCallback:(Rect bounds)=> const LinearGradient(
          //     begin: Alignment.bottomCenter,
          //     end: Alignment.topCenter,
          //     colors: [Colors.green,
          //       Colors.white,],
          //   ).createShader(bounds),

            child: SizedBox(height: 50,width: 50,
              child: Image(image: NetworkImage("https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/375_Whatsapp_logo-512.png")))
            //FaIcon(FontAwesomeIcons.whatsapp,size: 100,),

          ));
  }
}