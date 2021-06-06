import 'package:charity_app/s_account.dart';
import 'package:charity_app/s_family_add.dart';
import 'package:charity_app/tests/x_test.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {



  int _selectedIndex = 0;
  bool isChecked = false;
  static List<Widget> _widgetOptions = [
    ///Home Screen
    /*Text(
      'Home Page: ',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),*/
    Text(
      'Home Page',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),
    ///Account Screen
    Account(),
  ];

//**********************************************************************
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    ///Scaffold
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      ///floating Action Button With condition
      // if( Signed in ==true ) return
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// Show Family add

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FamilyAdd()),
          );
        },
        //tooltip: 'Show me the value!',
        child: Icon(Icons.add),
        // else return null
      ),
    );
  }
}
