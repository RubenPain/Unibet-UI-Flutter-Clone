import 'package:flutter/material.dart';
import 'package:unibets/main.dart';
import 'package:flutter/cupertino.dart';

Color match1 = Color(0x269052).withOpacity(1);
Color match2 = Color(0x289B58).withOpacity(1);

badge_live() {
  return Container(
      padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Text(
        'LIVE',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 11),
      ));
}

card() {
  return Container(
    margin: EdgeInsets.fromLTRB(8, 6, 8, 6),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(1)),
        color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/losc.jpg'),
        Container(
          padding: EdgeInsets.only(left: 12, bottom: 12, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lille - Monaco',
                style: TextStyle(color: greenU, fontSize: 21),
              ),
              Text(
                "France, Ligue 1 UberEATS - Aujourd'hui, 13h00",
                style: TextStyle(fontSize: 15),
              ),
              Row(
                children: [
                  Icon(CupertinoIcons.clock_fill,
                      size: 16, color: Colors.grey[700]),
                  Text(
                    'LIVE',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Résultat du match '),
                  Icon(
                    Icons.swap_horiz,
                    size: 14,
                    color: greenU,
                  ),
                  Text(
                    'CASH \n OUT',
                    style: TextStyle(fontSize: 6),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  cote('1', '2.33', '53%', 0.53, Colors.lightGreen),
                  SizedBox(
                    width: 20,
                  ),
                  cote('N', '3.45', '27%', 0.27, Colors.lightBlue[300]),
                  SizedBox(
                    width: 20,
                  ),
                  cote('2', '2.78', '20%', 0.20, Colors.lightBlue[300])
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [Text('👍🍀🤑 40')],
              )
            ],
          ),
        )
      ],
    ),
  );
}

mini_card() {
  return Container(
    margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  image: DecorationImage(
                      image: AssetImage('assets/losc.jpg'), fit: BoxFit.fill)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Lille - Monaco',
                    style: TextStyle(color: greenU, fontSize: 21)),
                Text("France, Ligue 1 UberEATS",
                    style: TextStyle(fontSize: 15)),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text("Aujourd'hui, 13h00"),
                    SizedBox(
                      width: 2,
                    ),
                    Icon(
                      CupertinoIcons.clock_fill,
                      size: 16,
                      color: Colors.grey[700],
                    ),
                    Text('LIVE',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Text('Résultat du match '),
            Icon(
              Icons.swap_horiz,
              size: 14,
              color: greenU,
            ),
            Text(
              'CASH \n OUT',
              style: TextStyle(fontSize: 6),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            cote('1', '2.33', '53%', 0.53, Colors.lightGreen),
            SizedBox(
              width: 20,
            ),
            cote('N', '3.45', '27%', 0.27, Colors.lightBlue[300]),
            SizedBox(
              width: 20,
            ),
            cote('2', '2.78', '20%', 0.20, Colors.lightBlue[300])
          ],
        ),
      ],
    ),
  );
}

cote(statut, cote, percentage, value, color) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Container(
            height: 28,
            width: 20,
            child: Center(
              child: Text(
                statut,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2),
                    bottomLeft: Radius.circular(2)),
                color: match1),
          ),
          Container(
            height: 28,
            width: 1,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.only(right: 5),
            height: 28,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(2),
                    bottomRight: Radius.circular(2)),
                color: match2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  cote,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
      Row(
        children: [
          Text(percentage),
          Container(
            margin: EdgeInsets.only(left: 5),
            height: 5,
            width: 50,
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              value: value,
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          )
        ],
      )
    ],
  );
}

cote_live(statut, cote) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Container(
            height: 28,
            width: 20,
            child: Center(
              child: Text(
                statut,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2),
                    bottomLeft: Radius.circular(2)),
                color: match1),
          ),
          Container(
            height: 28,
            width: 1,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.only(right: 5),
            height: 28,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(2),
                    bottomRight: Radius.circular(2)),
                color: match2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  cote,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    ],
  );
}

live() {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hellas Vérone',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '1',
              style: TextStyle(color: Colors.yellow),
            )
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Cagliari',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              '0',
              style: TextStyle(color: Colors.yellow),
            )
          ],
        ),
        Container(
          height: 110,
          child: Stack(
            children: [
              Positioned(
                top: 15,
                child: Container(
                  padding: EdgeInsets.fromLTRB(8, 15, 8, 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(1)),
                      color: Color(0x3C3C3C).withOpacity(1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text('Résultat du match',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          Icon(
                            Icons.swap_horiz,
                            size: 14,
                            color: Colors.white,
                          ),
                          Text('CASH \n OUT',
                              style: TextStyle(
                                fontSize: 6,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(children: [
                        cote_live('1', '1.35'),
                        SizedBox(width: 20,),
                        cote_live('N', '3.75'),
                        SizedBox(width: 20,),
                        cote_live('2', '4.35'),
                        SizedBox(width: 20,)
                      ],)
                    ],
                  ),
                ),
              ),
              Positioned(left: 143,
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(1)),
                  color: Color(0x3BA933).withOpacity(1)
                ),
                child: Text('39:28', style: TextStyle(color: Colors.white, fontSize: 11),),
              ),)
            ],
          ),
        )
      ],
    ),
  );
}
