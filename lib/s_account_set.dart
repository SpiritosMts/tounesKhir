import 'package:flutter/material.dart';


class AccountSetter extends StatefulWidget {

  @override
  _AccountSetterState createState() => _AccountSetterState();
}
class _AccountSetterState extends State<AccountSetter> {
/*
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
*/


  //**********************************************************************

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextFormField(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            //restorationId: 'life_story_field',
            //focusNode: _lifeStory,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'الاسم واللقب',
                labelText: 'الاسم واللقب',
                hintStyle: TextStyle(
                  //textAlign: TextAlign.right,
                  //textDirection: TextDirection.rtl,

                )
            ),
            maxLines: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextFormField(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            //restorationId: 'life_story_field',
            //focusNode: _lifeStory,
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'البريد الالكتروني',
                labelText: 'البريد',
                hintStyle: TextStyle(
                  //textAlign: TextAlign.right,
                  //textDirection: TextDirection.rtl,

                )
            ),
            maxLines: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextFormField(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            //restorationId: 'life_story_field',
            //focusNode: _lifeStory,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'الهاتف',
              labelText: 'الهاتف',
            ),
            maxLines: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextFormField(
            obscureText: true,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            //restorationId: 'life_story_field',
            //focusNode: _lifeStory,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'أدخل كلمة المرور',
              labelText: 'كلمة المرور',
            ),
            maxLines: 1,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16.0),
          child: TextFormField(
            obscureText: true,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            //restorationId: 'life_story_field',
            //focusNode: _lifeStory,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'أدخل كلمة المرور مجددا',
              labelText: 'كلمة المرور',
            ),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}