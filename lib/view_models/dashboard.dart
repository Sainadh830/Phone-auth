import 'package:flutter/material.dart';
import 'package:sampleapp/services/authservice.dart';
import 'package:firebase_core/firebase_core.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text('Signout'),
        onPressed: () {
          AuthService().signOut();
        },
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF6200EE),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            label: ('home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: ('Users'),
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
    );
  }
}
