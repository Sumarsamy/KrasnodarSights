import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenMuseum2 extends StatefulWidget{

  @override
  _PlaceScreenMuseum2State createState() => _PlaceScreenMuseum2State();
}

class _PlaceScreenMuseum2State extends State<PlaceScreenMuseum2> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/muzk.jpg'),
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
                              Text('Художественный музей имени Ф.А.Коваленко',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Краснодарский краевой художественный музей имени Ф.А. Коваленко - один "
                                  "из самых старых художественных музеев Северного Кавказа. Количество хранимых в музее объектов "
                                  "составляет около 12 тысяч единиц, и здесь находятся работы российских и зарубежных авторов. В основу собрания фонда музея была положена "
                                  "коллекция Ф.А. Коваленко, которую он передал в распоряжение города в 1904 году. В составе коллекции "
                                  "Ф.А. Коваленко находилось 730 картин и 1400 графических работ. Также она содержала редкостные книги и "
                                  "объекты прикладного искусства. Позже И.Е. Репин и другие художники подарили галерее свои творения.",
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
    const url = 'https://yandex.ru/maps/org/krasnodarskiy_krayevoy_khudozhestvenny_muzey_imeni_f_a_kovalenko/1223437612/?ll=38.968950%2C45.035194&mode=search&sctx=ZAAAAAgBEAAaKAoSCZCCp5ArfUNAEZj4o6gzhUZAEhIJFkz8UdSZtz8R8WYN3lfloj8iBgABAgMEBSgKOABA64cGSAFqAnJ1nQHNzEw9oAEAqAEAvQHQ%2BE6%2FwgEFrNqwxwTqAQDyAQD4AQCCAkvQpdGD0LTQvtC20LXRgdGC0LLQtdC90L3Ri9C5INC80YPQt9C10Lkg0LjQvNC10L3QuCDQpC7QkC7QmtC%2B0LLQsNC70LXQvdC60L6KAgCSAgCaAgxkZXNrdG9wLW1hcHM%3D&sll=38.968950%2C45.035194&sspn=0.184382%2C0.073819&text=%D0%A5%D1%83%D0%B4%D0%BE%D0%B6%D0%B5%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9%20%D0%BC%D1%83%D0%B7%D0%B5%D0%B9%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%20%D0%A4.%D0%90.%D0%9A%D0%BE%D0%B2%D0%B0%D0%BB%D0%B5%D0%BD%D0%BA%D0%BE&z=12.97';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}