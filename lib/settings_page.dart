// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool logoSelected = false;
  bool fontStyleSelected = false;
  bool stampColorSelected = false;
  bool stampSizeSelected = false;
  bool stampPositionSelected = false;

  void toggleSelection(bool currentState, Function(bool) setStateFunction) {
    setState(() {
      setStateFunction(!currentState);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.grey.withOpacity(0.6),
        title: Text(
          'Stamp Setting',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {
                toggleSelection(logoSelected, (value) {
                  logoSelected = value;
                });
              },
              child: Icon(
                logoSelected ? Icons.circle : Icons.circle_outlined,
              ),
            ),
            title: Text('Logo'),
            trailing: CircleAvatar(
              child: Image.asset(
                'assets/tracker.jpeg',
                height: 20,
                width: 20,
              ),
            ),
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () {
                toggleSelection(fontStyleSelected, (value) {
                  fontStyleSelected = value;
                });
              },
              child: Icon(
                fontStyleSelected ? Icons.circle : Icons.circle_outlined,
              ),
            ),
            title: Text('Font Style'),
            trailing: Text('Sf ui text'),
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () {
                toggleSelection(stampColorSelected, (value) {
                  stampColorSelected = value;
                });
              },
              child: Icon(
                stampColorSelected ? Icons.circle : Icons.circle_outlined,
              ),
            ),
            title: Text('Stamp Color'),
            trailing: Text('Multiple'),
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () {
                toggleSelection(stampSizeSelected, (value) {
                  stampSizeSelected = value;
                });
              },
              child: Icon(
                stampSizeSelected ? Icons.circle : Icons.circle_outlined,
              ),
            ),
            title: Text('Stamp Size'),
            trailing: Text('Medium'),
          ),
          ListTile(
            leading: GestureDetector(
              onTap: () {
                toggleSelection(stampPositionSelected, (value) {
                  stampPositionSelected = value;
                });
              },
              child: Icon(
                stampPositionSelected ? Icons.circle : Icons.circle_outlined,
              ),
            ),
            title: Text('Stamp Position'),
            trailing: Text('Bottom'),
          ),
        ],
      ),
    );
  }
}
