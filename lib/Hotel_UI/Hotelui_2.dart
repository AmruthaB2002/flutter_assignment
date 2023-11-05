
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: HotelDetail(),));
}

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            foregroundDecoration: const BoxDecoration(
              color: Colors.black26
            ),
            height: 400,width: 2000,
              child: Image.network("https://images.unsplash.com/photo-1595576508898-0ad5c879a061?auto=format&fit=crop&q=80&w=1974&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",fit: BoxFit.cover,)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0,bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:16.0),
                  child: Text("Flora Airport Hotel and Convention Centre",
                    style: TextStyle(color:Colors.white,
                    fontSize: 28.0,fontWeight: FontWeight.bold),
                  ),
                ),
              Row(
                children: [
                  const SizedBox(width: 16.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.pink.shade900,
                      borderRadius: BorderRadius.circular(20.0)),
                    child: const Text("1,233 reviews",
                      style: TextStyle(color: Colors.white,fontSize: 13.0),
                    ),
                  ),
                  const Spacer(),
                  IconButton(color: Colors.white,icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(32.0),
                 color: Colors.white,
                 child:  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     const Row(
                 children:[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                  ],
                ),
                Text.rich(TextSpan(children: [
                  // widgetSpan(
                  //     child:Icon(Icons.location_on,size: 16.0,
                  //     color:Colors.grey)
                  // ),
                  TextSpan(
                    text:"Less than 2km from Cochin International Airport"
                  )
                ]),style: TextStyle(color: Colors.black45,fontSize: 12.0),)
                   ],
                 ),
               ),
          Column(
            children: [
              Text("\$2500",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,fontSize: 20.0),
              ),
              Text("/per night",style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45
              ),)
            ],
          ),
            ],
                  ),
      const SizedBox(height: 30.0,),
     SizedBox(
       width: double.infinity,
       child:MaterialButton(
         onPressed: (){},
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50)
         ),
         color: Colors.pink.shade900,
    child:const Text("Book Now",
    style:TextStyle(color: Colors.white)
    // 
    ),
    padding: const EdgeInsets.symmetric(
      vertical:16.0,
      horizontal:32.0,),
     ),
    ),
    const SizedBox(height:30.0),
    Text("Flora Airport Hotel and Convention Centre".toUpperCase(),
      style: const TextStyle(fontWeight: FontWeight.w600,
          fontSize: 14.0),
    ),
    const SizedBox(height: 10.0,),
    const Text("""The modern air-conditioned rooms are all equipped with a flat-screen TV, minibar and personal safe. The executive club rooms come with a balcony. The en suite bathrooms come with a shower. Pool & Spa facility are available at the prperty Flora Airport Hotel is 1 km from CIAL Trade & Exhibition Centre and 2 km from CIAL Golf Course. It is 6 km from Angamaly Railway Station and 14 km from Alwaye Railway Station.""",
      textAlign:TextAlign.justify,
      style: TextStyle(fontWeight: FontWeight.w300,
          fontSize: 14.0),),
                     const SizedBox(height: 10.0,),
                     const Text("""The hotel also provides a business centre, tour desk and car rentals. The front desk operates 24 hours.Blue Bell Multi Cuisine Restaurant serves a daily buffet breakfast. Other dining option include  Peppermint Cafe.The hotel offers 60 centrally air-conditioned rooms and suites featuring modern interiors and furnishings. Each elegant room is ideal for the corporate travellers and families alike. The rooms are fitted with LCD Television with Satellite Channels, High Speed Wi-Fi Internet Connectivity, Work Desk, Direct Dial Telephone, Electronic Safe Deposit Box, Mini Refrigerator, Tea/Coffee Maker and En-Suite Bathroom.""", textAlign:TextAlign.justify,
                       style: TextStyle(fontWeight: FontWeight.w300,
                           fontSize: 14.0),)
              ],
            ),
          ),
    ],
      ),
          ),
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0,
          //   child: AppBar(
          //     backgroundColor: Colors.transparent,
          //     elevation: 0,
          //    centerTitle: true,
          //    title: const Text("DETAILS",style: TextStyle(fontSize:16.0 ,fontWeight:FontWeight.normal ),),
          //   ),
          // ),
      // Align(
      //   alignment:Alignment.bottomLeft,
      // child: BottomNavigationBar(
      //   backgroundColor: Colors.white54,
      //     elevation: 0,
      //     selectedItemColor: Colors.black,
      //     items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.search),),
      // BottomNavigationBarItem(icon: Icon(Icons.favorite_border),),
      //   BottomNavigationBarItem(icon: Icon(Icons.settings),),
      // ])
      // ),
     
      ],),);
  }
}