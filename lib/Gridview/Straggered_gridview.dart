
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Steaggerdgridexample2(),
  ));
}

class Steaggerdgridexample2 extends StatelessWidget {

  
  var images = [
    "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg",
    "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/11/Couple-on-a-tropical-beach-jetty-at-Maldives.jpg",
    "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/12/burj-khalifa-dubai.jpg",
    "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/08/Carlton_Hotel_St_Moritz.png",
    "https://assets.traveltriangle.com/blog/wp-content/uploads/2019/01/Hawaii1.jpg",
     "https://assets.traveltriangle.com/blog/wp-content/uploads/2019/11/Ethiopia_7th-november.jpg",
  
  ];

  var name = [
    "Phuket",
    "Maldives",
    "Dubai",
    "Switzerland",
    "Hawaii",
    "Ethiopia",
    ];

  var rate = [
    "₹60,870",
    "₹93,759 ",
    "₹2,28,892",
    "₹2,11,553",
    "₹74,902",
    "₹74,902 ",
  ] ;

  dynamic heights = [
    400,
    500,
    300,
    300,
    350,
    250,
 ];

  dynamic width = [
 800,
    800,
    800,
    800,
    800,
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        //  title: Center(
        //   child: Text(
        //     "Wonderlog",
        //     style: GoogleFonts.ebGaramond
        //     (
        //         fontSize: 36,
        //         color: Colors.white,
        //         fontWeight: FontWeight.bold),
                
        //   ),
          
        // ),
        
        leading: Icon(Icons.menu),centerTitle: true,

        title:   const Text("Wonderlog"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.favorite),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.notification_add),
          SizedBox(
            width: 15,
          ),
        ],
        ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(
            6,
            (index) => 
            //StaggeredGridTile.count(
                //crossAxisCellCount: 
                //mainAxisCellCount: 6,
                //crossAxisCellCount: 2,
          //crossAxisSpacing: 4,
          //mainAxisSpacing: 50,
                 Card(
                  child: ListTile(
                    title: Column(children: [
                      Container(
                        height: heights[index],
                        width: width[index],

                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  images[index],
                                ))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(alignment: Alignment.centerLeft,
                      child: Text(name[index],style: TextStyle(color: Colors.black),),
                      ),
                       Align(alignment: Alignment.centerLeft,
                      child: Text(rate [index],style: TextStyle(color: Colors.black45),),
                       ),
                    ]),
                  ),
                )),
          ),
        ),
      );
  }
}