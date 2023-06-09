import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs/models/cafe_model.dart';
import 'package:kurs/screens/cafe_screen_cafes.dart';

import '../screens/cafe_screen_bars.dart';
import '../screens/cafe_screen_restaurants.dart';

class CafeCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
             Text(
                'Где поесть?',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
                ),
              GestureDetector(
                onTap: () => print('Посмотреть всё'),
                child: Text('Посмотреть всё',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cafes.length,
              itemBuilder: (BuildContext context, int index) {
                Cafe cafe = cafes[index];
                return GestureDetector(
                  onTap: () => {
                    if (cafes[index].type == 'Рестораны')  Navigator.push(context,MaterialPageRoute(builder: (_) => CafeScreenRestaurants(cafe: cafe),),)
                    else if (cafes[index].type == 'Кафе') Navigator.push(context,MaterialPageRoute(builder: (_) => CafeScreenCafes(cafe: cafe),),)
                    else if (cafes[index].type == 'Бары') Navigator.push(context,MaterialPageRoute(builder: (_) => CafeScreenBars(cafe: cafe),),)
                  },
                  child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: 210.0,
                      child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget> [
                            Positioned(
                              bottom: 15.0,
                              child: Container(
                                height: 120.0,
                                width: 200.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column (
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget> [
                                        if (cafe.type == "Рестораны")
                                          Text('${cafe.eatplacesP.length} заведения',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        if (cafe.type == "Кафе")
                                          Text('${cafe.eatplacesC.length} заведения',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                        if (cafe.type == "Бары")
                                          Text('${cafe.eatplacesB.length} заведения',
                                            style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1.2,
                                            ),
                                          ),
                                      ]
                                  ),
                                ),
                              ),
                            ),
                            Container(decoration: BoxDecoration (
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                              ],
                            ),
                              child: Stack(
                                children: <Widget>[
                                  Hero(
                                    tag: cafe.imageUrl,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image(
                                        height: 180.0,
                                        width: 180.0,
                                        image: AssetImage(cafe.imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 10.0,
                                    bottom: 10.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        /* Text(destination.city,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                ),*/
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.locationArrow,
                                              size: 10.0,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5.0),
                                            Text(cafe.type,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1.2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]
                      )
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}