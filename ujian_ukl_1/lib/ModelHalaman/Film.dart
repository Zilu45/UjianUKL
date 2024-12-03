import 'package:flutter/material.dart';

class Film extends StatelessWidget {
  const Film({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white, // Putih di atas
            Colors.blueAccent.shade100, // Biru di bawah
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sedang Tayang",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text("Semua"),
                    Icon(Icons.navigate_next_sharp),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: 
          Row(
            children: [
              _buildTextCircle("Semua Film",true),
              SizedBox(width: 15,),
              _buildTextCircle("XXI",false),
              SizedBox(width: 15,),
              _buildTextCircle("CGV",false),
              SizedBox(width: 15,),
              _buildTextCircle("Cinepolis",false),
              SizedBox(width: 15,),
              _buildTextCircle("Watchlist",false),
              SizedBox(width: 15,),
              _buildTextCircle("History",false),
              SizedBox(width: 15,),
            ],
          ),

          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildImage('Doksli/film1.png', "MOANA 2", "9.8", "Film ini merupakan \nlanjutan dari film pertama Moana"),
                SizedBox(width: 10),
                _buildImage('Doksli/film2.png', "SPIDER MAN : NO WAY HOME", "10", "Film ini menjadi film\nSpiderman dengan rating terbaik"),
                SizedBox(width: 10),
                _buildImage('Doksli/film3.png', "NATSU E NO TUNNEL", "8.9", "Film ini mengusung tema\nperjalanan ke masa lalu\n yang cocok kamu tonton"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(String image, String judul, String skor, String isi) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(image),
              height: 250,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            judul,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 13),
              SizedBox(width: 5),
              Text(
                skor,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            isi,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

Widget _buildTextCircle(String nama, bool isFirst) {
  return Padding(
    padding: EdgeInsets.all(5.0),
    child: Row(
      children: [
        InkWell(
          onTap: () {},
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: isFirst ? Colors.blue : Colors.black,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 10,
                      color: isFirst ? const Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 0, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

}
