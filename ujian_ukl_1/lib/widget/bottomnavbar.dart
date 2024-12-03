import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  int activePage;
 Bottomnavbar(this.activePage);

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {

  void _changeSelectedNavbar(index){
    if(index == 0){
      Navigator.pushReplacementNamed(context, 'dashboard');
    }
            else if(index == 1)
                Navigator.pushNamed(context, 'bioskop', 
                );

           else if(index == 2){
                Navigator.pushReplacementNamed(
               context, 'tiket');
            }

            else if(index == 3)
                Navigator.pushReplacementNamed(context, 'tiketku',);
    }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: const Color.fromARGB(255, 137, 137, 137),
      currentIndex: widget.activePage,
      onTap: _changeSelectedNavbar,
      items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: (){} ,icon: Icon(Icons.home_rounded)),
        label: 'Beranda'
        ),
      BottomNavigationBarItem(icon: IconButton(onPressed: (){
        } ,icon: Icon(Icons.location_city)),
        label: 'Bioskop'
        ),
        BottomNavigationBarItem(icon: IconButton(onPressed: (){} ,icon: Icon(Icons.card_membership_rounded)),
        label: 'Tiket'
        ), 
        BottomNavigationBarItem(icon: IconButton(onPressed: (){} ,icon: Icon(Icons.card_travel)),
        label: 'Tiketku'
        ),
      ],
    );
  }
  }