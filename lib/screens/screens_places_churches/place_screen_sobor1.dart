import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenSobor1 extends StatefulWidget{

  @override
  _PlaceScreenSobor1State createState() => _PlaceScreenSobor1State();
}

class _PlaceScreenSobor1State extends State<PlaceScreenSobor1> {

  @override
  Widget build(BuildContext context){
    return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('images/sob.jpg'),
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
                      Text('Собор Александра Невского',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Главный православный храм города "
                          "Краснодара. Разрушенный в 1932 году большевиками, он, к счастью, "
                          "был восстановлен в наше время. Мимо него невозможно пройти, "
                          "не остановившись - его архитектура поражает своей лаконичностью и величием одновременно, "
                          "а звон колоколов можно слушать часами, любуясь как их золото сияет на солнце.",
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
    const url = 'https://yandex.ru/maps/org/voyskovoy_sobor_svyatogo_blagovernogo_knyazya_aleksandra_nevskogo/1187460120/?ll=38.974518%2C45.041535&mode=search&sll=38.975313%2C45.035470&sspn=0.180588%2C0.072299&text=%D0%A1%D0%BE%D0%B1%D0%BE%D1%80%20%D0%90%D0%BB%D0%B5%D0%BA%D1%81%D0%B0%D0%BD%D0%B4%D1%80%D0%B0%20%D0%9D%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE&z=13';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}