import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenTheatre1 extends StatefulWidget{

  @override
  _PlaceScreenTheatre1State createState() => _PlaceScreenTheatre1State();
}

class _PlaceScreenTheatre1State extends State<PlaceScreenTheatre1> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/mol.jpg'),
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
                              Text('Молодёжный театр',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Молодежный театр в Краснодаре работает на базе творческого муниципального "
                                  "объединения «Премьера». Театр представляет на своей сцене спектакли, созданные "
                                  "по классическим произведениям зарубежной и русской литературы. Каждый сезон актерская "
                                  "труппа преподносит краснодарской публике разножанровый репертуар и премьеры новых постановок. "
                                  "Создание Молодежного театра в Краснодарском крае дело рук заслуженных деятелей искусства — С. Гронского и Л. Гатова.",
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
    const url = 'https://yandex.ru/maps/org/molodyozhny_teatr/1076762644/?ll=38.945031%2C45.041409&mode=search&sctx=ZAAAAAgBEAAaKAoSCYo73uS3dkNAEfLOoQxVh0ZAEhIJ0opvKHy2nj8RCJChYweViD8iBgABAgMEBSgKOABAI0gBagJydZ0BzcxMPaABAKgBAL0BPEk1vcIBBZSwuIEE6gEA8gEA%2BAEAggIf0JzQvtC70L7QtNGR0LbQvdGL0Lkg0YLQtdCw0YLRgIoCAJICAJoCDGRlc2t0b3AtbWFwcw%3D%3D&sll=38.945031%2C45.041409&sspn=0.239944%2C0.096053&text=%D0%9C%D0%BE%D0%BB%D0%BE%D0%B4%D1%91%D0%B6%D0%BD%D1%8B%D0%B9%20%D1%82%D0%B5%D0%B0%D1%82%D1%80&z=12.59';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}