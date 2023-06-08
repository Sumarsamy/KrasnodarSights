import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenPark2 extends StatefulWidget{

  @override
  _PlaceScreenPark2State createState() => _PlaceScreenPark2State();
}

class _PlaceScreenPark2State extends State<PlaceScreenPark2> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/chist.jpg'),
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
                              Text('Чистяковская роща',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Чистяковская роща одинаково хорошо подойдёт как для романтического свидания, так и для шумных массовых гуляний. "
                                  "Здесь можно побродить в умиротворяющей тишине среди огромных раскидистых деревьев, позаниматься спортом, покормить "
                                  "белочек или отправиться в развлекательную зону. "
                                  "На всей территории поддерживается единый традиционный русский стиль, поэтому парк иногда называют тематическим. В последние "
                                  "годы здесь появилось 3 фонтана с подсветкой, газоны, цветы для высадки выращивают в специально построенной теплице. На фото "
                                  "Чистяковской рощи видно, что это очень зеленая территория, на которой всегда многолюдно.",
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
    const url = 'https://yandex.ru/maps/org/chistyakovskaya_roshcha/1064952061/?ll=38.996041%2C45.058932&mode=search&sll=38.995038%2C45.028883&sspn=0.119972%2C0.048037&text=%D0%A7%D0%B8%D1%81%D1%82%D1%8F%D0%BA%D0%BE%D0%B2%D1%81%D0%BA%D0%B0%D1%8F%20%D1%80%D0%BE%D1%89%D0%B0&z=13.59';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}