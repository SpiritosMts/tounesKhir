import 'package:charity_app/s_account_set.dart';
import 'package:flutter/material.dart';


class Account extends StatefulWidget {

  @override
  _AccountState createState() => _AccountState();
}
class _AccountState extends State<Account> {


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 100),
          Text('إشترك في عمل خيري',
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 15),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.purple,
              minimumSize: Size(88, 36),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountSetter()),
              );
              },

            child: Text('إشترك',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
