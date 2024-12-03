import 'package:flutter/material.dart';
import 'package:ujian_ukl_1/widget/bottomnavbar.dart';


class FilmBioskopPage extends StatefulWidget {
  @override
  _FilmBioskopPageState createState() => _FilmBioskopPageState();
}

class _FilmBioskopPageState extends State<FilmBioskopPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, dynamic>> currentlyShowing = [
    {
      'title': "Look Back",
      'image': 'Doksli/Lookback.png',
      'rating': 9.2,
      'age': 'R13+',
      'genre': 'Drama, Sci-fi, Comedy',
    },
    {
      'title': "SpiderMan No Way Home",
      'image': 'Doksli/spdr.png',
      'rating': 9.0,
      'age': 'R13+',
      'genre': 'Sci-fi, Super Hero, Action',
    },
    {
      'title': "Aqua Man",
      'image': 'Doksli/Aqua.png',
      'rating': 9.5,
      'age': 'D17+',
      'genre': 'Action, Adventure, Super Hero',
    },
    {
      'title': "Natsu E No Tunnel",
      'image': 'Doksli/natsu.png',
      'rating': 9.4,
      'age': 'R13+',
      'genre': 'Drama, Adventure, Sci-fi',
    },
        {
      'title': "Percy Jackson",
      'image': 'Doksli/percy.png',
      'rating': 9.5,
      'age': 'R13+',
      'genre': 'Action, Adventure, Sci-fi',
    },
    {
      'title': "Minion: The Rise Of Gru",
      'image': 'Doksli/minion.png',
      'rating': 9.4,
      'age': 'R8+',
      'genre': 'Action, Adventure, Comedy, Cartoon',
    },
  ];

  final List<Map<String, dynamic>> comingSoon = [
        
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Film Bioskop'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'SEDANG TAYANG'),
            Tab(text: 'AKAN DATANG'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          FilmGrid(films: currentlyShowing),
          FilmGrid(films: comingSoon),
        ],
      ),
      bottomNavigationBar: Bottomnavbar(2),
    );
  }
}

class FilmGrid extends StatelessWidget {
  final List<Map<String, dynamic>> films;

  const FilmGrid({required this.films});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 0.65,
      ),
      itemCount: films.length,
      itemBuilder: (context, index) {
        final film = films[index];
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8),
                      
                    ),
                    child: Image.asset(
                      film['image'],
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      film['title'],
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '${film['age']} · ${film['genre']}',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 16),
                        SizedBox(width: 4),
                        Text(
                          '${film['rating']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
