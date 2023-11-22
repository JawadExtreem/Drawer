// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:drawer/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double drawerWidth = 250.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tracker App',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      drawer: Drawer(
        elevation: 2,
        backgroundColor: Colors.white,
        width: drawerWidth,
        // width: 250,
        child: ListView(
          children: [
            DrawerHeader(
              duration: Duration(microseconds: 23),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Text(
                    'My TRACKER APP',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'assets/tracker3.jpg',
                      height: 90,
                      // width: 170,
                      width: drawerWidth,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map View'),
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Tracking History'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingsPage()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text('Search'),
                ),
                ListTile(
                  leading: Icon(Icons.more),
                  title: Text('More Apps'),
                ),
                ListTile(
                  leading: Icon(Icons.rate_review),
                  title: Text('Rate App'),
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share App'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
