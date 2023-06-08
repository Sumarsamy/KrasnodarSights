import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:kurs/screens/screens_eatplaces_cafes/screen_eatplace_cafe1.dart';
import 'package:kurs/screens/screens_eatplaces_cafes/screen_eatplace_cafe2.dart';
import 'package:kurs/screens/screens_eatplaces_cafes/screen_eatplace_cafe3.dart';
import '../models/cafe_model.dart';
import '../models/eatplace_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';


class CafeScreenCafes extends StatefulWidget{
  final Cafe cafe;

  CafeScreenCafes({required this.cafe});

  @override
  _CafeScreenCafesState createState() => _CafeScreenCafesState();
}

class _CafeScreenCafesState extends State<CafeScreenCafes> {
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
              itemCount: widget.cafe.eatplacesC.length,
              itemBuilder: (BuildContext context, int index) {
                EatPlace eatplace = widget.cafe.eatplacesC[index];
                return GestureDetector(
                    onTap: () => {
                  if (eatplacesC[index].name == 'Нахлебник')  Navigator.push(context,MaterialPageRoute(builder: (_) => EatPlaceScreenCafe1(),),)
                  else if (eatplacesC[index].name == 'ВафлиВафли') Navigator.push(context,MaterialPageRoute(builder: (_) => EatPlaceScreenCafe2(),),)
                  else if (eatplacesC[index].name == 'Уни') Navigator.push(context,MaterialPageRoute(builder: (_) => EatPlaceScreenCafe3(),),)
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
                                      child: Text(eatplace.name, style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
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