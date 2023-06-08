import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenRestaurant3 extends StatefulWidget{

  @override
  _PlaceScreenRestaurant3State createState() => _PlaceScreenRestaurant3State();
}

class _PlaceScreenRestaurant3State extends State<PlaceScreenRestaurant3> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/ret.jpg'),
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
                              Padding(
                                padding: EdgeInsets.all(30),
                                child: Row (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(width: 20),
                                      InkWell(
                                          onTap: _launchtel,
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
                                            child: Icon(Icons.add_call,
                                              color: Colors.yellow,
                                              size: 28,
                                            ),
                                          )
                                      ),
                                      InkWell(
                                          onTap: _launchsite,
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
                                            child: Icon(Icons.personal_video,
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
                                      SizedBox(width: 20),
                                    ]
                                ),
                              ),
                              Text('Рётей',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Это ресторан-подарок, который обеспечит погружение в атмосферу страны восходящего солнца, "
                                  "благодаря уникальной локации. "
                                  "Трепетный подход к эстетике ремесла и дела. "
                                  "Японская гармония и баланс. Это место – кульминация путешествия по Японскому саду.",
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
    const url = 'https://yandex.ru/maps/org/ryotey/44285147668/?ll=39.036812%2C45.044263&mode=search&sctx=ZAAAAAgBEAAaKAoSCcQI4dHGfUNAEQYwZeCAhEZAEhIJ2jhiLT4Fxj8RbxKDwMqhsT8iBgABAgMEBSgKOABAI0gAagJydZ0BzcxMPaABAKgBAL0Bv%2BvfPsIBBpT05vykAeoBAPIBAPgBAIICCtGA0ZHRgtC10LmKAgCSAgCaAgxkZXNrdG9wLW1hcHM%3D&sll=39.036812%2C45.044263&sspn=0.021504%2C0.008608&text=h%60ntq&z=16.07';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchtel() async {
    const url = "tel:+79933980348";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchsite() async {
    const url = "https://ryotei.ru/";
    if (await canLaunch(url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}