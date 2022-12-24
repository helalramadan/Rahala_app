
import 'package:fluentui_icons/fluentui_icons.dart';

import 'package:flutter/material.dart';
import 'package:rahala/screens/home_screen.dart';
import 'package:rahala/screens/profile_screen.dart';
import 'package:rahala/screens/search_screen.dart';
import 'package:rahala/screens/ticket_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int curentindex=0;
  List<Widget> _widgetOPtions=[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:_widgetOPtions[curentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentindex,
        onTap: ( int value){
         setState(() {
           curentindex=value;
         });
        },
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xff526488),
        items: [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled),label: 'Profile'),
        ],
      ),
    );
  }
}
