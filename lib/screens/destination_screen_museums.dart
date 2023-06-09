import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:kurs/screens/map_screen.dart';
import 'package:kurs/screens/screens_places_museums/place_screen_museum1.dart';
import 'package:kurs/screens/screens_places_museums/place_screen_museum2.dart';
import 'package:kurs/screens/screens_places_museums/place_screen_museum3.dart';
import 'package:kurs/screens/screens_places_museums/place_screen_museum4.dart';
import 'package:kurs/screens/screens_places_museums/place_screen_museum5.dart';
import '../models/destination_model.dart';
import '../models/place_model.dart';
import '../widgets/destination_carousel.dart';

class DestinationScreenMuseums extends StatefulWidget{
  final Destination destination;

  DestinationScreenMuseums({required this.destination});

  @override
  _DestinationScreenMuseumsState createState() => _DestinationScreenMuseumsState();
}

class _DestinationScreenMuseumsState extends State<DestinationScreenMuseums> {

  Text _buildRatingStars(int rating){
    String stars = '';
    for(int i =0; i < rating; i++){
      stars += '⭐';
    }
    stars.trim();
    return Text(stars);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget> [
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 6,
                                ),
                              ]
                          ),
                          child: Icon(Icons.arrow_back,
                            size: 28,
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.type,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          widget.destination.city,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
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
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: widget.destination.placesMu.length,
              itemBuilder: (BuildContext context, int index) {
                Place place = widget.destination.placesMu[index];
                return GestureDetector(
                    onTap: () => {
                  if (placesMu[index].name == 'Музей-заповедник имени Е.Д.Фелицына')  Navigator.push(context,MaterialPageRoute(builder: (_) => PlaceScreenMuseum1(),),)
                  else if (placesMu[index].name == 'Художественный музей имени Ф.А.Коваленко') Navigator.push(context,MaterialPageRoute(builder: (_) => PlaceScreenMuseum2(),),)
                  else if (placesMu[index].name == 'Выставочный зал изобразительных искусств') Navigator.push(context,MaterialPageRoute(builder: (_) => PlaceScreenMuseum3(),),)
                  else if (placesMu[index].name == 'Выставочный зал боевой славы') Navigator.push(context,MaterialPageRoute(builder: (_) => PlaceScreenMuseum4(),),)
                  else if (placesMu[index].name == 'Литературный музей Кубани') Navigator.push(context,MaterialPageRoute(builder: (_) => PlaceScreenMuseum5(),),)
                },
                  child: Stack(
                  children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 190.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget> [
                                    Container(
                                      width: 130.0,
                                      child: Text(place.name, style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                  ]
                              ),
                              Text(place.address,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              _buildRatingStars(place.rating),
                              SizedBox(height: 10.0),
                              Row( children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(color: Theme.of(context).primaryColorLight,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(place.startTimes[0],
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(color: Theme.of(context).primaryColorLight,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(place.startTimes[1],
                                  ),
                                ),
                              ],

                              )
                            ]
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 110.0,
                          image: AssetImage(place.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}