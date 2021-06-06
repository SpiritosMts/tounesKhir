import 'package:charity_app/models/model_family.dart';
import 'package:charity_app/server.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  ///instances of families
  List<Family> families = [
    Family(name: 'raed ', description: 'Zawalyyy', tel: '45614902'),
    Family(name: 'hsan', description: 'Zawalyyy', tel: '456457782'),
    Family(name: 'hmd ', description: 'Zawalyyy', tel: '56549564'),
    Family(name: 'kofta', description: 'Zawalyyy', tel: '64655656'),
    Family(name: 'wael', description: 'Zawalyyy', tel: '865656556'),
    Family(name: 'nizar', description: 'Zawalyyy', tel: '98565656'),
  ];

  Widget getFamilyWidget(Family fam) {
    return getFamilyWidget(fam);
  }

  //***************************************************************************
  @override
  Widget build(BuildContext context) {
    getQuoteOfTheDay();
    Widget getFamilyWidget(Family fam) {
      return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('الهاتف ' + (fam.name ?? 'غير متوفر')),
            Text((fam.description ?? 'غير متوفر')),
            Text((fam.tel ?? 'غير متوفر')),
          ],
        ),
      );
    }

    return ListView(
      children: [
        Container(
          child: Text('مرحبا بكم, شكرا لجعلكم العالم مكانا أفضل',
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
          ),
        ),
    Container(
    child: ListView.builder(

    shrinkWrap: true,
      itemCount: families.length,
      itemBuilder: (context, i) {
        return getFamilyWidget(families[i]);
      },
    ),
    ),

      ],
    );

  }
}
