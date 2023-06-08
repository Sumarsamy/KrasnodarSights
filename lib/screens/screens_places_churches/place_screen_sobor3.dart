import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenSobor3 extends StatefulWidget{

  @override
  _PlaceScreenSobor3State createState() => _PlaceScreenSobor3State();
}

class _PlaceScreenSobor3State extends State<PlaceScreenSobor3> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/sobor2.jpg'),
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
                              Text('Свято-Троицкий собор',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Один из классических образов южно-русского стиля, "
                                  "детище  Ивана Мальгерба, создателя самых красивых храмов "
                                  "Юга России — собор Святой Троицы. Свято-Троицкий собор был заложен в Екатеринодаре "
                                  "3 октября 1899 года в память о чудесном спасении императорской семьи Александра III при крушении "
                                  "царского поезда в октябре 1888 года.",
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
    const url = 'https://yandex.ru/maps/org/svyato_troitskiy_sobor/1092512204/?ll=38.962508%2C45.030196&mode=search&sctx=ZAAAAAgBEAAaKAoSCSk%2FqfbpgkNAEatZZ3xffEZAEhIJ4nMn2H8d5z8Roz1eSIeH0j8iBgABAgMEBSgKOABAGkgBagJydZ0BzcxMPaABAKgBAL0BRAiJ3cIBBczT%2BYgE6gEA8gEA%2BAEAggIm0KHQstGP0YLQvi3QotGA0L7QuNGG0LrQuNC5INGB0L7QsdC%2B0YCKAgCSAgE0mgIMZGVza3RvcC1tYXBz&sll=38.962508%2C45.030196&sspn=0.014997%2C0.006004&text=%D0%A1%D0%B2%D1%8F%D1%82%D0%BE-%D0%A2%D1%80%D0%BE%D0%B8%D1%86%D0%BA%D0%B8%D0%B9%20%D1%81%D0%BE%D0%B1%D0%BE%D1%80&z=16.59';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}