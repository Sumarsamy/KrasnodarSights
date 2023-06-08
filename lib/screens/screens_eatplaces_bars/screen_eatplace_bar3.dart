import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class EatPlaceScreenBar3 extends StatefulWidget{

  @override
  _EatPlaceScreenBar3State createState() => _EatPlaceScreenBar3State();
}

class _EatPlaceScreenBar3State extends State<EatPlaceScreenBar3> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gor.jpg'),
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
                              Text('Горький бар',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Горький — коктейльный бар с классической основой и довольно смелыми экспериментами."
                                  "На страницах меню вы найдете как всеми любимый негрони, так и эксперименты с пало-санто. "
                                  "Здесь бармен и официант в одном лице очень внимательно выслушает ваши пожелания и сотворит "
                                  "напиток, исходя из ваших предпочтений.",
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
    const url = 'https://yandex.ru/maps/org/gorkiy_bar/59774525569/?ll=38.973779%2C45.031102&mode=search&sctx=ZAAAAAgBEAAaKAoSCVrY0w5%2Ff0NAEc%2F1fThIhkZAEhIJOLwgIjXtvj8RH%2FZCAdvBqD8iBgABAgMEBSgKOABAI0gAagJydZ0BzcxMPaABAKgBAL0BKz84gMIBBoHB29beAeoBAPIBAPgBAIICFdCz0L7RgNGM0LrQuNC5INCx0LDRgIoCAJICAJoCDGRlc2t0b3AtbWFwcw%3D%3D&sll=38.973779%2C45.031102&sspn=0.015206%2C0.006088&text=ujhmrbq%20%2Cfh&z=16.57';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchtel() async {
    const url = "tel:+79648968686";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchsite() async {
    const url = "https://barhopping-krd.ru/gorkiybar";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}