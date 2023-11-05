import 'package:flutter/material.dart';
import 'package:flutter_assignment/Hotel/list.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    final hotelid = ModalRoute.of(context)?.settings.arguments;
    final listfromhotel = list.firstWhere(
      (element) => element['id'] == hotelid,
    );
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                opacity: .5,
                fit: BoxFit.cover,
                image: NetworkImage(listfromhotel['image']),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  bottom: 50,
                  child: Text(
                    listfromhotel['name'],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 20,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    )),
                Positioned(
                  left: 20,
                  bottom: 25,
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                      ),
                      Text(
                        listfromhotel['location'],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.purple,
                      minimumSize: Size(250, 50),
                    ),
                    onPressed: () {},
                    child: Text("Book now"),
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Text(
                          listfromhotel['Rate'],
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('/per Day'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    listfromhotel['descriptionheading'],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Text(
                      listfromhotel['description'],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}