import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  var Functionnames = [
 'My Account',
    'Payment',
    'Load e-Sewa',
    'Fund Transfer',
    'Schedule Payment',
    'Scan To Pay'
  ];
    var images = [
    'assets/image/myaccount.jpg',
    "assets/image/payment.jpg",
    "assets/image/esewa.jpg",
    "assets/image/transfer.jpg",
    "assets/image/spayment.jpg",
    "assets/image/scan.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.red,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          floating: true,
          pinned: false,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Welcome! Zera...",
            style: GoogleFonts.damion(
              fontSize: 25,
              fontWeight: FontWeight.w200,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.qr_code_2),
        )],
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Stack(
              children: [
                Container(
                  color: Colors.red.shade700,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 15,
                  left: MediaQuery.of(context).size.width * 0.01,
                  right: MediaQuery.of(context).size.width * 0.01,
                  child: Card(
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white38,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red.shade600,
                              radius: 52,
                              child: const CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?auto=format&fit=crop&q=80&w=871&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(30.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Zera",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'NPR.1,00,999.35',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.remove_red_eye,
                                        color: Colors.blueAccent,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '1234567890',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bank,
                      color: Colors.red.shade700,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'WOULD YOU LIKE TO?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 150,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            images[index],
                            height: 50,
                            width: 50,
                          ),
                          Text(Functionnames[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.bank,
                      color: Colors.red.shade700,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'LAST TRANSACTIONS',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),



            SizedBox(height: 15,),
            Card(
                child: Container(
                    height: 125,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.red.shade100,
                    child: const Padding(padding: EdgeInsets.all(0.08),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text("CWDR/", style: TextStyle(color: Colors.black,
                                    fontSize: 15, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5),
                                Row(
                                    children: [
                                        Text('913457/9639751048281509', style: TextStyle(color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),),
                                        SizedBox(width: 100),
                                        Text("NPR. 20,000.00", style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
                                        )],
                                ),
                                SizedBox(height: 5),
                                Text('01-01-2020',style: TextStyle(fontSize: 13,
                                    fontWeight: FontWeight.bold))       
                            ]  
                        ),
                    )
            ) )],
          ),


              // SizedBox(height: 80,width: 500,
              //   child: Card(color: Colors.red.shade100,
              
              //      child: ListTile(
              //      title: const Text("CWDR/",style: TextStyle(fontWeight: FontWeight.bold),),textColor:Colors.black ,
              //       subtitle: const Text("123456778908876531675342          NPR.10,000.00"),
              
                //        leading: Container(
                //         alignment:Alignment.centerLeft,
                //          color: Colors.red.shade700,
                //          width: 20,
                //        )
                //       ),
                // ),
              //)
              // SliverList.builder(
              //   itemCount: 10,
              //   itemBuilder: (context, index) => Card(
              //     child: ListTile(
              //       leading: Container(
              //         color: Colors.red.shade700,
              //         width: 10,
              //       ),
              //     ),
              //   ),)
              // ),
           
            // SizedBox(
            //   child: Container(  child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.center,
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           "Zera",
            //                           style: TextStyle(
            //                               color: Colors.black,
            //                               fontSize: 20,
            //                               fontWeight: FontWeight.bold),
            //                         ),
            //                         SizedBox(
            //                           height: 5,
            //                         ),
            //       ])),
            // ),
        )]),
    ));
  }
}