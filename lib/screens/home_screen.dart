import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:firebase_signin/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_signin/screens/crops_screen.dart';
import '../farmers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Farmer> f = [
    Farmer(name: 'Aditya Sheth', address: 'Gurgaon'),
    Farmer(name: 'Anish Kulkarni', address: 'Pune'),
    Farmer(name: 'Nachiket Kotalwar', address: 'Pune'),
  ];

  Widget farmerCard(farmer) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CropsScreen()));
        },
        child: Card(
          color: Colors.green[300],
          child: Padding(padding:EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(8),
                  child: Container(
                    width:50 ,
                    height:50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage('assets/images/avatar.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(farmer.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Text(farmer.address,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: const Text('Farmers List'),
        centerTitle: true,
        backgroundColor: Colors.green,

      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: colorScheme()),
        child: Column(
          children: f.map((farmer) => farmerCard(farmer)).toList(),
        ),
      ),
    );
  }
}

