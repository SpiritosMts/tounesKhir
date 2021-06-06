import 'package:flutter/material.dart';

class MyTest extends StatefulWidget {
  @override
  _MyTestState createState() => _MyTestState();
}

class _MyTestState extends State<MyTest> {



//Widget Screenhome =
  //**********************************************************************

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: ListView(
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
                hintText: 'hintText',
                labelText: 'labelText',
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
                hintText: 'hintText',
                labelText: 'labelText',
              ),
              maxLines: 3,
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
                hintText: 'hintText',
                labelText: 'labelText',
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
                hintText: 'hintText',
                labelText: 'labelText',
              ),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
