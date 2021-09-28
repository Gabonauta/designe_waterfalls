import 'package:flutter/material.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      //showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.description),
          label: 'Información',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.image),
          label: "Wallpaper",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: "Animales",
        ),
      ],
    );
  }
}
