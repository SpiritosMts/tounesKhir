import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

import 'map/googleMapScreen.dart';

class FamilyAdd extends StatefulWidget {
  @override
  _FamilyAddState createState() => _FamilyAddState();
}

class _FamilyAddState extends State<FamilyAdd> {
/*
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
*/
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  //**********************************************************************

  @override
  Widget build(BuildContext context) {
  //FirebaseCrashlytics.instance.crash();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'إضافة عائلة أو شخص محتاج',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
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
                  hintText: 'إسم العائلة أو إسم مستعار',
                  labelText: 'الاسم',
                ),
                maxLines: 1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                //restorationId: 'life_story_field',
                //focusNode: _lifeStory,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'وصف الحالة الاجتماعية للشخص أو العائلة',
                    labelText: 'الوصف',
                    hintStyle: TextStyle(
                        //textAlign: TextAlign.right,
                        //textDirection: TextDirection.rtl,

                        )),
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
                  hintText: 'الهاتف',
                  labelText: 'الهاتف',
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
                  hintText: 'العنوان',
                  labelText: 'العنوان',
                ),
                maxLines: 1,
              ),
            ),


            /// location

            Row(

              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  alignment: Alignment.centerRight,
                  child: Text('إضافة موقع'),
                ),
                SizedBox(width: 10),
                Container(
                  child:ElevatedButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(88, 36),
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                      );
                    },

                    child: Text('تحديث',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),

                ),
              ],
            ),
            /// Images

             Row(
               children: [
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

                   alignment: Alignment.centerRight,
                     child: Text('إضافة صور'),
                 ),
                 SizedBox(width: 10),
                 Container(
                     alignment: Alignment.centerLeft,
                     child:ElevatedButton(
                       style: TextButton.styleFrom(
                         primary: Colors.white,
                         minimumSize: Size(88, 36),
                         padding: EdgeInsets.symmetric(horizontal: 16.0),
                         shape: const RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(Radius.circular(20.0)),
                         ),
                       ),
                       onPressed: () {
                         /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  );
                  */

                       },

                       child: Text('أضف',
                         style: TextStyle(
                           fontSize: 20,
                         ),
                       ),
                     ),
                 ),
               ],
             ),


            ///checks
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text('مزيد من المعلومات:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("وجود إعاقة",
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),
                  checkColor: Colors.white,
                  value: isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("مرض مزمن",
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),
                  checkColor: Colors.white,
                  value: isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("مشكل تنقل",
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),

                  checkColor: Colors.white,
                  value: isChecked3,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked3 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("قص تغذية",
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),
                  checkColor: Colors.white,
                  value: isChecked4,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked4 = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text("مشكل أثاث",
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                  ),
                  checkColor: Colors.white,
                  value: isChecked5,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked5 = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child:ElevatedButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: Size(88, 36),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
                onPressed: () {
                  /*
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GoogleMapScreen()),
                  );
                  */

                },

                child: Container(
                  margin: EdgeInsets.all(5),
                  child: Text('أضف إلى القائمة',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
