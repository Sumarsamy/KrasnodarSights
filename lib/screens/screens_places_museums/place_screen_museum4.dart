import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenMuseum4 extends StatefulWidget{

  @override
  _PlaceScreenMuseum4State createState() => _PlaceScreenMuseum4State();
}

class _PlaceScreenMuseum4State extends State<PlaceScreenMuseum4> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/boyev.jpg'),
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
                              Text('Выставочный зал боевой славы',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Выставочный зал открыт в 2011 году. За это время он превратился в центр военно-патриотического"
                                  " воспитания жителей города, излюбленное место отдыха. В нём три зала: зал Великой "
                                  "Отечественной войны, зал локальных войн и вооружённых конфликтов, зрительный зал с "
                                  "картинной галереей.Самый объёмный и содержательный зал Великой Отечественной войны, "
                                  "экспозиции которого действуют с мая 2011 года, постоянно ведутся работы по открытию "
                                  "новых экспозиций и совершенствованию имеющихся. Все экспонаты, представленные в зале, "
                                  "найдены на полях сражений на кубанской земле поисковыми отрядами в период с начала 1990-х годов по настоящее время",
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
    const url = 'https://yandex.ru/maps/org/vystavochny_zal_boyevoy_slavy/1761982336/?ll=38.962336%2C45.037039&mode=search&sctx=ZAAAAAgBEAAaKAoSCce6uI0GfENAEfmBqzyBhEZAEhIJFkz8UdSZxz8R6svSTs3lsj8iBgABAgMEBSgKOABAtc0GSAFqAnJ1nQHNzEw9oAEAqAEAvQHHztpkwgEFgO%2BWyAbqAQDyAQD4AQCCAjXQktGL0YHRgtCw0LLQvtGH0L3Ri9C5INC30LDQuyDQsdC%2B0LXQstC%2B0Lkg0YHQu9Cw0LLRi4oCAJICAjgwmgIMZGVza3RvcC1tYXBz&sll=38.962336%2C45.037039&sspn=0.111938%2C0.044814&text=%D0%92%D1%8B%D1%81%D1%82%D0%B0%D0%B2%D0%BE%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B7%D0%B0%D0%BB%20%D0%B1%D0%BE%D0%B5%D0%B2%D0%BE%D0%B9%20%D1%81%D0%BB%D0%B0%D0%B2%D1%8B&z=13.69';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}