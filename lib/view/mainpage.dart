import 'dart:developer';

import 'package:aananditeckass/constant/color.dart';
import 'package:aananditeckass/view/dashboard.dart';
import 'package:aananditeckass/view/services.dart';
import 'package:aananditeckass/view/vehicle.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Default to Profile tab

  final List<Widget> _pages = [Dashboard(), SelectVehicle(), SelectServices()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        showUnselectedLabels: true,
        fixedColor: redcolor,
        unselectedItemColor: Colors.black45,
        selectedLabelStyle: TextStyle(color: redcolor),
        unselectedLabelStyle: TextStyle(color: blackColor),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bike_scooter), label: 'Vehicle'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Service'),
        ],
      ),
    );
  }
}
