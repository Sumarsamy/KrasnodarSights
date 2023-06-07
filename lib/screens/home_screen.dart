import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:kurs/screens/destination_screen_parks.dart';
import 'package:kurs/screens/map_screen.dart';
import '../widgets/cafe_carousel.dart';
import '../widgets/cafe_model.dart';
import '../widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  int _currentTab = 0;
  /*Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme
              .of(context)
              .primaryColorLight : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(_icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Theme
              .of(context)
              .primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 70.0),
                    child: Row(
                      children: <Widget>[
                        Text('KrasnoSight',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                        ),
                      ),
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 40.0,
                          color: Colors.black,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ]
                  ),
                  ),
                  SizedBox(width: 5.0),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 70.0),
                    child: Text('Что хотите увидеть в городе?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          SizedBox(height: 20.0),
           /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
              )
                  .toList(),
            ),*/
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            CafeCarousel(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int value) {
          setState (() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dehaze,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('https://img4.goodfon.ru/wallpaper/nbig/0/4e/shatenka-krasotka-model-portret-pricheska-makiiazh-rubashka.jpg'),
            ),
            label: 'Наталья',
          ),
        ],
      ),

    );
  }
}
