// ignore_for_file: file_names, non_constant_identifier_names

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/Pages/Home.dart';
import 'package:shoping_app/Pages/SearchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static final List<Widget> pages = <Widget>[
    const MyHome(),
    const SearchPage(),
    const Text("Tickets"),
    const Text("Profile"),
  ];
  void OnBottomtapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: pages[selectedIndex]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: OnBottomtapped,
            elevation: 10,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedItemColor: const Color.fromARGB(233, 67, 67, 228),
            unselectedItemColor: const Color.fromARGB(250, 71, 71, 105),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Tickets"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  label: "Profile")
            ]),
      ),
    );
  }
}
