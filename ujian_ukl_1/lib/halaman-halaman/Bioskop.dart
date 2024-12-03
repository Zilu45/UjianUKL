import 'package:flutter/material.dart';
import 'package:ujian_ukl_1/widget/bottomnavbar.dart';

class Bioskop extends StatelessWidget {
  const Bioskop({super.key});

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
          scrollDirection: Axis.vertical,
          child: Column(
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
         Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Row(
            children: [
              Image.asset('Doksli/logo2.png'),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tandai Bioskop Favoritmu',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
                  SizedBox(height: 2,),
                  Text("Bioskop Favoritmu akan berada paling atas \npada daftar ini dan pada jadwal film")
                ],
              ),
            ],
          ),
         ),
              _buildText("AEON MALL CGV"),
              _buildText("AEON MALL TANJUNG BARAT XXI"),
              _buildText("AGORA MALL IMAX"),
              _buildText("AGORA MALL PREMIERE"),
              _buildText("AGORA MALL XXI"),
              _buildText("ARION XXI"),
              _buildText("ARTHA GADING XXI"),
              _buildText("BASURA XXI"),
              _buildText("ARAYA XXI"),

            ]
            ),
         ),
            
bottomNavigationBar: Container
(
  color: Colors.white,
  child: 
  Bottomnavbar(1),
),
      );
      }
Widget _buildText(String nama) {
  return Container(
    height: 60,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: Row(
      children: [
        Icon(
          Icons.stars_rounded,
          color: Colors.grey.shade400,
        ),
        SizedBox(width: 20),
        Text(nama),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 10), // Mengatur jarak ikon panah dari sisi kanan
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

}