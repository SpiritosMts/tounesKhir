import 'package:charity_app/s_account.dart';
import 'package:charity_app/s_family_add.dart';
import 'package:charity_app/s_home_list.dart';
import 'package:charity_app/tests/x_test.dart';
import 'package:flutter/cupertino.dart';
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
    HomeList(),
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
        title: Text('قائمة العائلات المحتاجة',
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
        ),
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
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
      ///floating Action Button With condition
      // if( Signed in ==true ) return
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          /// Show Family add

         await  showRules();
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

  Future showRules() => showDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      content: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('عند إضافة صور، الرجاء تجنب تصوير وجوه العائلات المعوزة',textAlign: TextAlign.right,),
            Text('الرجاء التوصية فقط على العائلات التي لكم بهم معرفة دقيقة',textAlign: TextAlign.right,),
            Text('إن اضفتم معطيات شخص/عائلة محتاجة الرجاء التدقق من صحة المعلومات',textAlign: TextAlign.right,),
          ],
        ),
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          isDestructiveAction: true,
          child: Text('حسناً'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}


