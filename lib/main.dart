import 'package:flutter/material.dart';
import 'widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:dotted_border/dotted_border.dart';

Color greenU = Color(0x147B44).withOpacity(1);
List<List> list = [
  ['Top Foot', 'eu.png'],
  ['Ligue 1 Ub...', 'fr.png'],
  ['P.League', 'gb.png'],
  ['LaLiga', 'es.png'],
  ['Seria A', 'it.png'],
  ['Bundesliga', 'de.png']
];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unibets',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greenU,
        drawer: Container(),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(3),
          height: AppBar().preferredSize.height,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: greenU, size: 25),
                  Text(
                    'Accueil',
                    style: TextStyle(color: greenU, fontSize: 12),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports, size: 25),
                  Text(
                    'Sports',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart, size: 25),
                  Text(
                    'Panier',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings_backup_restore, size: 25),
                  Text(
                    'Mes Paris',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              Container(
                height: 50,
                width: 45,
                child: Stack(
                  children: [
                    Center(child: badge_live()),
                    Positioned(
                      right: 0,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0x333333).withOpacity(1)),
                        height: 12,
                        width: 12,
                        child: Center(
                          child: Text(
                            '5',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: greenU,
          title: SizedBox(
            child: Image.asset('assets/unibet logo.png', fit: BoxFit.fitHeight),
            height: 40,
          ),
          actions: [
            Row(
              children: [
                Text(
                  'Mon Compte \n 100.00€',
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(Icons.account_circle),
                SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(8, 6, 8, 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(1)),
                    color: Colors.white),
                padding: EdgeInsets.only(top: 8, bottom: 8),
                height: 85,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                padding: EdgeInsets.all(2),
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border:
                                        Border.all(color: greenU, width: 3)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'icons/flags/png/' +
                                                  list[index][1],
                                              package: 'country_icons'),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Text(list[index][0], style: TextStyle(fontSize:12),)
                            ],
                          ));
                    }),
              ),
              card(),
              Container(
                margin: EdgeInsets.fromLTRB(8, 6, 8, 12),
                padding: EdgeInsets.all(5),
                height: 70,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Image.asset('assets/bannière.png', fit:BoxFit.fill),
              ),
              mini_card(),
              Container(margin: EdgeInsets.fromLTRB(8, 0, 8, 0), color: Colors.black, height: 0.2,),
              mini_card(),
              Container(margin: EdgeInsets.fromLTRB(8, 0, 8, 0), color: Colors.black, height: 0.2,),
              mini_card(),
              Container(margin: EdgeInsets.fromLTRB(8, 0, 8, 0), color: Colors.black, height: 0.2,),
              card(),
              card(),
              SizedBox(height: 6,),
              mini_card(),
              Container(margin: EdgeInsets.fromLTRB(8, 0, 8, 0), color: Colors.black, height: 0.2,),
              mini_card(),
              Container(margin: EdgeInsets.fromLTRB(8, 0, 8, 0), color: Colors.black, height: 0.2,),
              mini_card(),
              Container(margin: EdgeInsets.fromLTRB(8, 0, 8, 0), color: Colors.black, height: 0.2,),
              card(),
              Container(
              margin: EdgeInsets.fromLTRB(8, 6, 8, 6),
              padding: EdgeInsets.fromLTRB(12, 20, 12, 12),
              decoration: BoxDecoration(
                color: Color(0x333333).withOpacity(1),
                borderRadius: BorderRadius.all(Radius.circular(1))
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      badge_live(),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0x333333).withOpacity(1),
                          shape: BoxShape.circle,
                          border: Border.all(color:Colors.red, width:3),
                        ),
                        height: 70,
                        width: 70,
                        child: Center(child: Text('5', style: TextStyle(fontSize:45, color: Colors.white),)),
                      ),
                      Icon(CupertinoIcons.calendar, color: Colors.grey[200],)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text('MATCHS EN DIRECT', style:TextStyle(color:Colors.grey[200], fontSize:20)),
                  SizedBox(height:25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [
                        Icon(Icons.sports_soccer, color:Colors.grey[200], size:28),
                        Container(margin: EdgeInsets.only(top:3),
                        height: 3, width: 53.3, color: match2,)
                      ],),
                      Column(children: [
                        Icon(Icons.sports_basketball, color:Colors.grey[200], size:28),
                        Container(margin: EdgeInsets.only(top:3),
                        height: 3, width: 53.3, color: Color(0x3C3C3C).withOpacity(1),)
                      ],),
                      Column(children: [
                        Icon(Icons.sports_rugby, color:Colors.grey[200], size:28),
                        Container(margin: EdgeInsets.only(top:3),
                        height: 3, width: 53.3, color: Color(0x3C3C3C).withOpacity(1),)
                      ],),
                      Column(children: [
                        Icon(Icons.sports_hockey, color:Colors.grey[200], size:28),
                        Container(margin: EdgeInsets.only(top:3),
                        height: 3, width: 53.3, color: Color(0x3C3C3C).withOpacity(1),)
                      ],),
                      Column(children: [
                        Icon(Icons.sports_volleyball, color:Colors.grey[200], size:28),
                        Container(margin: EdgeInsets.only(top:3),
                        height: 3, width: 53.3, color: Color(0x3C3C3C).withOpacity(1),)
                      ],),
                      Column(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0x3BA933).withOpacity(1)
                              ),
                              child: Center(child: Text('U', style: TextStyle(color: Colors.white),),),
                            ),
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.all(Radius.circular(2))
                              ),
                              child: Center(child: Text('TV', style: TextStyle(color: Colors.white)),),
                            )
                        ],),
                        Container(margin: EdgeInsets.only(top:11),
                        height: 3, width: 53.3, color: Color(0x3C3C3C).withOpacity(1),)
                      ],)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  live(),
                  SizedBox(height: 10,),
                  live(),
                  SizedBox(height: 10,),
                  live(),
                  SizedBox(height: 10,),
                  DottedBorder(
                    color: Colors.grey[700],
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Voir tous les matchs', style: TextStyle(color: Colors.white),),
                          badge_live()
                        ],
                      ),
                    ),
                  )
                ],
              ),
              )
            ],
          ),
        ));
  }
}
