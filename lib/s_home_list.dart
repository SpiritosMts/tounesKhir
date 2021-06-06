import 'package:charity_app/models/model_family.dart';
import 'package:charity_app/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  String noneImage =
      'https://www.freeiconspng.com/thumbs/no-image-icon/no-image-icon-6.png';

  ///instances of families
  List<Family> families = [
    Family(
        name: 'raed ',
        description: 'Zawalyyy',
        tel: '45614902',
        images:
            'https://www.cnet.com/a/img/sU4Yg-txttxK5raE3LF-9DlNHFo=/940x0/2020/06/17/4e9fdaa6-c9bb-4047-a116-fb12067d28e9/gettyimages-846330808.jpg'),
    Family(
        name: 'hsan',
        description: 'fdhdfhjdghjg',
        tel: '456457782',
        images:
            'https://i.hurimg.com/i/hdn/75/0x0/5bd02a4f18c773199cd51afe.jpg'),
    Family(
        name: 'hmd ',
        description: 'Zawalyyy',
        tel: '56549564',
        images:
            'https://mk0habitatforhui6bly.kinstacdn.com/wp-content/uploads/2018/08/relative-poverty-cover.jpg'),
    Family(
        name: 'kofta',
        description: 'Zawalyyy',
        tel: '64655656',
        images:
            'https://image.shutterstock.com/image-photo/raxaul-india-circa-october-2011-260nw-592622099.jpg'),
    Family(
        name: 'wael',
        description: 'Zawalyyy',
        tel: '865656556',
        images:
            'https://t4.ftcdn.net/jpg/02/17/90/99/360_F_217909997_vZGTnNsBPfRuJEH25xaSl1ciTTWxpjla.jpg'),
    Family(
        name: 'nizar',
        description: 'Zawalyyy',
        tel: '98565656',
        images: 'https://static.dw.com/image/16379376_6.jpg'),
  ];

  Widget getFamilyWidget(Family fam) {
    return getFamilyWidget(fam);
  }

  String? _quote;

  @override
  void initState() {
    //_quote = await getQuoteOfTheDay();
   // print(_quote);
    super.initState();
  }

  //***************************************************************************
  @override
  Widget build(BuildContext context) {
    Widget getFamilyWidget(Family fam) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Image.network(fam.images??noneImage,
              fit: BoxFit.cover,
              ),
            ),
            Stack(
              children:[
                Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(Icons.check,color: Colors.green),
                      Text('12'),
                    ],
                  ),
                ),
                Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 5),
                  Container(
                    margin: EdgeInsets.only(right: 4),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      (fam.name ?? 'غير متوفر'),
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    (fam.description ?? 'غير متوفر'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    (fam.tel ?? 'غير متوفر') + 'الهاتف ',

                  ),
                ],
              ),
              ]
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            'مرحبا بكم, شكرا لجعلكم العالم مكانا أفضل',
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        if (_quote != null)
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              '‟ ' + (_quote ?? '') + ' ”',
              textAlign: TextAlign.center,
            ),
          ),
        Container(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
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
