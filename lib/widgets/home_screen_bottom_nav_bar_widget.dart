import 'package:flutter/material.dart';


class HomeScreenBottomNavBar extends StatelessWidget {
  const HomeScreenBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        // boxShadow: [
        //   BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        // ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          selectedItemColor: Colors.indigoAccent,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          unselectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 12),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded), label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.inventory_2_outlined), label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
