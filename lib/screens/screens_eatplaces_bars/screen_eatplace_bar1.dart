import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class EatPlaceScreenBar1 extends StatefulWidget{

  @override
  _EatPlaceScreenBar1State createState() => _EatPlaceScreenBar1State();
}

class _EatPlaceScreenBar1State extends State<EatPlaceScreenBar1> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/XXL.webp'),
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
                              Text('Кулибин Паб',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Стильный паб в центре Краснодара, куда приходят, чтобы открыть для себя новые "
                                  "сорта российского крафта, попробовать фирменный бургер и от души потанцевать под каверы любимых рок-хитов. Пространство "
                                  "паба «Кулибин» стало местом притяжения для всех любителей оригинального пенного и хорошей музыки. Первый уровень заведения "
                                  "— классический барный: с высокими стульями, меню напитков на грифельной доске, душевными разговорами за контактной стойкой "
                                  "и безудержным весельем субботнего танцпола. На втором этаже можно основательно расположиться за большим столом на уютных "
                                  "диванах, чтобы провести несколько часов за вдумчивой дегустацией барной карты и тёплым дружеским общением.",
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
    const url = 'https://yandex.ru/maps/org/kulibin_pub/51382983816/?ll=38.973914%2C45.028139&mode=search&sctx=ZAAAAAgBEAAaKAoSCfs8RnnmfUNAEYi85erHgkZAEhIJ0opvKHy2rj8RhL2JITmZmD8iBgABAgMEBSgKOABAuc0GSAFqAnJ1nQHNzEw9oAEAqAEAvQGOruFSwgEGiLmotb8B6gEA8gEA%2BAEAggIV0JrRg9C70LjQsdC40L0g0J%2FQsNCxigIAkgIAmgIMZGVza3RvcC1tYXBz&sll=38.973914%2C45.028139&sspn=0.015101%2C0.006046&text=%D0%9A%D1%83%D0%BB%D0%B8%D0%B1%D0%B8%D0%BD%20%D0%9F%D0%B0%D0%B1&z=16.58';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchtel() async {
    const url = "tel:+79628529922";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchsite() async {
    const url = "https://kulibinpub.ru/?ysclid=linev2ousv321368658";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}