import 'package:flutter/material.dart';
import 'package:ujian_ukl_1/widget/bottomnavbar.dart';

class Tiketku extends StatelessWidget {
  const Tiketku({super.key});

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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [         
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
            SizedBox(height: 20,),
            _buildImg('Doksli/natsu.png', 'Natsu E No Tunnel',"R13+ Drama, Advanture, Sci-Fi"),
            SizedBox(height: 20,),
            _buildImg('Doksli/percy.png', "Percy Jackson : Sea Of Monster","R17+ Action, Advanture,Sci-Fi")
          ]
        )
        ),
        bottomNavigationBar: Bottomnavbar(3),
    );
  }
  Widget _buildImg(String img, String nama,String nama2){
     return Container(
      width: 450,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200
          ),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
              mainAxisAlignment: 
            MainAxisAlignment.start,
          children: [
            SizedBox(width: 20,),
            Image.asset(img, fit: BoxFit.cover, height: 100,),
            SizedBox(width: 15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nama,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                Text(nama2,style: TextStyle(fontSize: 10,color: Colors.grey.shade300),),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow,),
                    Text("9.0")
                  ],
                )
              ],
            )
          ],
        ),
     );
  }
}