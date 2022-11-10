import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_signin/cropdata.dart';
import 'package:firebase_signin/screens/signin_screen.dart';
import 'package:firebase_signin/reusable_widgets/reusable_widget.dart';
import 'package:flutter/material.dart';
import '../farmers.dart';

class CropsScreen extends StatefulWidget {
  const CropsScreen({Key? key}) : super(key: key);

  @override
  State<CropsScreen> createState() => _CropsScreenState();
}

class _CropsScreenState extends State<CropsScreen> {

  List<Crop> c = [
    Crop(name: 'Corn', img: 'https://cdn.britannica.com/36/167236-050-BF90337E/Ears-corn.jpg'),
    Crop(name: 'Beetroot', img: 'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/277432_2200-732x549.jpg'),
    Crop(name:'Cabbage',img:'https://upload.wikimedia.org/wikipedia/commons/6/6f/Cabbage_and_cross_section_on_white.jpg'),
    Crop(name:'Carrot',img:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ42-MPEeIAdkDtavYfF2OTTZEWmmVPQvaXJuVHdiawgLJZIAnyUFJNzNHknv3mrz7w8po&usqp=CAU'),
    Crop(name: 'Corn', img: 'https://cdn.britannica.com/36/167236-050-BF90337E/Ears-corn.jpg'),
    Crop(name: 'Beetroot', img: 'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/02/277432_2200-732x549.jpg'),
    Crop(name:'Rice',img:'https://www.world-grain.com/ext/resources/Article-Images/2020/12/GMR_Rice_AdobeStock_64819529_E_Nov.jpg?t=1609338918&width=1080   '),
    Crop(name:'Potato',img:'https://upload.wikimedia.org/wikipedia/commons/a/ab/Patates.jpg')
  ];
  Widget cropCard(crop)
  {
   return Container(
     child: Padding(
       padding: EdgeInsets.all(8),
       child: Column(
         children:<Widget> [
           Image.network(crop.img,),
           Text(crop.name,style: const TextStyle(
             color: Colors.white,
             fontSize: 16,
           ),),
         ],
       ),
     ),
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Crops Data'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: colorScheme()),
        child: GridView.count(crossAxisCount: 2,
        children: c.map((crop) => cropCard(crop)).toList(),
        ),
      )
    );
  }
}
