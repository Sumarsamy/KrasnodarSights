import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs/models/destination_model.dart';
import 'package:flutter/src/widgets/container.dart';
import '../screens/destination_screen_monuments.dart';
import '../screens/destination_screen_museums.dart';
import '../screens/destination_screen_parks.dart';
import '../screens/destination_screen_churches.dart';
import '../screens/destination_screen_theatres.dart';

class DestinationCarousel extends StatelessWidget {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Куда сходить?',
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
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  Destination destination = destinations[index];
                  return GestureDetector(
                    onTap: () => {
                                if (destinations[index].type == 'Памятники')  Navigator.push(context,MaterialPageRoute(builder: (_) => DestinationScreenMonuments(destination: destination),),)
                                else if (destinations[index].type == 'Парки') Navigator.push(context,MaterialPageRoute(builder: (_) => DestinationScreenParks(destination: destination),),)
                                else if (destinations[index].type == 'Храмы') Navigator.push(context,MaterialPageRoute(builder: (_) => DestinationScreenChurches(destination: destination),),)
                                  else if (destinations[index].type == 'Музеи') Navigator.push(context,MaterialPageRoute(builder: (_) => DestinationScreenMuseums(destination: destination),),)
                                    else if (destinations[index].type == 'Театры') Navigator.push(context,MaterialPageRoute(builder: (_) => DestinationScreenTheatres(destination: destination),),)
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget> [
                              if (destination.type == "Парки")
                              Text('${destination.placesP.length} направления',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                              ),
                              if (destination.type == "Памятники")
                                Text('${destination.placesM.length} направления',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              if (destination.type == "Храмы")
                                Text('${destination.placesC.length} направления',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              if (destination.type == "Музеи")
                                Text('${destination.placesMu.length} направления',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              if (destination.type == "Театры")
                                Text('${destination.placesT.length} направления',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                              Text(
                              destination.description,
                              style: TextStyle(
                                  color: Colors.grey,
                              )
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
                              tag: destination.imageUrl,
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 180.0,
                                width: 180.0,
                                image: AssetImage(destination.imageUrl),
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
                                  Text(destination.type,
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