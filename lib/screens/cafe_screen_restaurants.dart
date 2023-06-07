import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:kurs/screens/map_screen.dart';
import '../models/cafe_model.dart';
import '../models/eatplace_model.dart';
import '../widgets/cafe_carousel.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class CafeScreenRestaurants extends StatefulWidget{
  final Cafe cafe;

  CafeScreenRestaurants({required this.cafe});

  @override
  _CafeScreenRestaurantsState createState() => _CafeScreenRestaurantsState();
}

class _CafeScreenRestaurantsState extends State<CafeScreenRestaurants> {
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
                  tag: widget.cafe.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(widget.cafe.imageUrl),
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
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
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
                      widget.cafe.type,
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
                          widget.cafe.city,
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
              /*Positioned(
                  right: 20.0,
                  bottom: 20.0,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.white70,
                    size: 25.0,
                  )
              ),*/
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: widget.cafe.eatplacesP.length,
              itemBuilder: (BuildContext context, int index) {
                EatPlace eatplace = widget.cafe.eatplacesP[index];
                return Stack(
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
                                      child: Text(eatplace.name, style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                    ),
                                   Container(
                                        child:IconButton(
                                          icon: Icon(Icons.free_breakfast),
                                          //color: Colors.black,
                                          iconSize: 25.0,
                                          onPressed: () => {
                                            if (eatplace.name == "Кулибин Паб")_launchURL
                                            else if (eatplace.name == "Зелёный кот")_launchURL1
                                            else if (eatplace.name == "Горький бар")_launchURL2
                                          },
                                    ),
                                   ),
                                  ]
                              ),
                              Text(eatplace.address,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              _buildRatingStars(eatplace.rating),
                              SizedBox(height: 10.0),
                              Row( children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(3.0),
                                  width: 70.0,
                                  decoration: BoxDecoration(color: Theme.of(context).primaryColorLight,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(eatplace.startTimes[0],
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
                                  child: Text(eatplace.startTimes[1],
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
                          image: AssetImage(eatplace.imageUrl,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  _launchURL() async {
    const url = 'https://flutter.dev';
    const url1 = 'https://katenkarest.ru/?ysclid=lilv3i5h7t404583640';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL1() async {
    const url = 'https://flutter.dev';
    const url1 = 'https://toriramen.ru/?ysclid=lilv4dr09v596973639';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURL2() async {
    const url = 'https://ryotei.ru/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}