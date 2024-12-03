import 'package:flutter/material.dart';
import 'package:ujian_ukl_1/ModelHalaman/Film.dart';
import 'package:ujian_ukl_1/ModelHalaman/List.dart';
import 'package:ujian_ukl_1/ModelHalaman/SlideShow.dart';
import 'package:ujian_ukl_1/widget/bottomnavbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            children: [
              Container(
          width: 300,
          alignment: Alignment.topLeft,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari di TIX ID..',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 229, 229, 229),
                prefixIcon: Icon(Icons.search,size: 20,),
              ),
            ),
            ),
            SizedBox(width: 60,),
            Icon(Icons.person_2_outlined),
            Icon(Icons.notification_add_outlined),
            ]
          ),
          ),
          automaticallyImplyLeading: false,
        ),

         body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Location Selector
            Container(
              color: Colors.grey.shade100,
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(Icons.location_on, color: Color.fromARGB(255, 196, 196, 196)),
                  SizedBox(width: 5),
                  Text(
                    "JAKARTA",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 300,),
                  Icon(Icons.arrow_drop_down,size: 30)
                ],
              ),
            ),
             const BannerSlider(),
             Image.asset('Doksli/iklan2.png',alignment: Alignment.center,width: 500,),
             Film(),
            
          Padding(padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
           'Spotlight',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text("Berita Terhangat Hari ini"),
          SizedBox(height: 16),
            ]
          ),
          ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
        children: [
           _buildSplight('Doksli/iklan.png'),
           SizedBox(width: 10,),
           _buildSplight('Doksli/iklan3.png'),
            SizedBox(width: 10,),
           _buildSplight('Doksli/iklan4.png'),
        ],
                ),
             ),
             Tixnow()
          ]
              ),
              ),

bottomNavigationBar: Container
(
  color: Colors.white,
  child: 
  Bottomnavbar(0),
),
    );  
  }

   Widget _buildSplight(String img){

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
                  child: Stack(
                    children: [
                      Image.asset(
                        img,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.remove_red_eye, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('57'),
                      SizedBox(width: 16),
                      Icon(Icons.thumb_up_alt, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('10'),
                    ],
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