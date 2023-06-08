import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenPark1 extends StatefulWidget{

  @override
  _PlaceScreenPark1State createState() => _PlaceScreenPark1State();
}

class _PlaceScreenPark1State extends State<PlaceScreenPark1> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/galic.jpg'),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      SizedBox(width: 60),
                      InkWell(
                          onTap: () {},
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
                            child: Icon(Icons.favorite,
                              color: Colors.yellow,
                              size: 28,
                            ),
                          )
                      ),
                      InkWell(
                          onTap: _launchURL,
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
                            child: Icon(Icons.location_on,
                              color: Colors.yellow,
                              size: 28,
                            ),
                          )
                      ),
                    ]
                )
            ),
            bottomNavigationBar: Container (
                height: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFEDF2F6),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )
                ),
                child: ListView(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Парк Краснодар',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Парк Галицкого — современный и относительно новый парк в Краснодаре, который был открыт в 2017 году. "
                                  "Построен парк силами мецената Сергея Галицкого спустя год после стадиона «Краснодар». По словам посетителей, "
                                  "в парке созданы идеальные условия для отдыха как с ребенком, так и в компании друзей. Парк Галицкого был построен"
                                  " по уникальному и современному проекту немецкой архитектурной компании. "
                                  "Именно поэтому в данном парке продуманы как детали инфраструктуры, так и элементы благоустройства. Также парк Галицкого "
                                  "отличается интересным и необычным для России дизайном.",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                            ],
                          )
                      )
                    ]
                )
            )
        )
    );
  }
  _launchURL() async {
    const url = 'https://yandex.ru/maps/org/park_krasnodar/77426465118/?ll=38.995038%2C45.028883&mode=search&sll=38.961848%2C45.016225&sspn=0.014997%2C0.006006&text=%D0%9F%D0%B0%D1%80%D0%BA%20%D0%9A%D1%80%D0%B0%D1%81%D0%BD%D0%BE%D0%B4%D0%B0%D1%80&z=13.59';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}