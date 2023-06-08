import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class EatPlaceScreenBar2 extends StatefulWidget{

  @override
  _EatPlaceScreenBar2State createState() => _EatPlaceScreenBar2State();
}

class _EatPlaceScreenBar2State extends State<EatPlaceScreenBar2> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/zelk.webp'),
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
                              Text('Зелёный кот',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Это заведение хорошо подойдет для встреч с друзьями и коллегами. "
                                  "Уютная обстановка позволит вам расслабиться и отдохнуть не только телом, "
                                  "но и душой. Здесь вы сможете насладиться блюдами европейской кухни, что с "
                                  "12:00 до 16:00 можно приобрести бизнес-ланчем. К тому же, в баре проводятся "
                                  "спортивные трансляции и есть Wi-Fi, что позволит вам не отвлекаться от важной работы. ",
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
    const url = 'https://yandex.ru/maps/org/zelyony_kot/1228311980/?ll=38.996065%2C45.049079&mode=search&sctx=ZAAAAAgBEAAaKAoSCeuOxTapfENAEf9eCg%2Bag0ZAEhIJ7lwY6UXtjj8RBYpYxLDDeD8iBgABAgMEBSgKOABAuc0GSAFqAnJ1nQHNzEw9oAEAqAEAvQE4EeimwgEFrJvayQTqAQDyAQD4AQCCAhXQl9C10LvRkdC90YvQuSDQutC%2B0YKKAgCSAgCaAgxkZXNrdG9wLW1hcHM%3D&sll=38.996065%2C45.049079&sspn=0.120807%2C0.048354&text=%D0%97%D0%B5%D0%BB%D1%91%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&z=13.58';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchtel() async {
    const url = "tel:+79385177755";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchsite() async {
    const url = "taplink.cc/greencatbar";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}