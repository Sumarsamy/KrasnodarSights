import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenMuseum3 extends StatefulWidget{

  @override
  _PlaceScreenMuseum3State createState() => _PlaceScreenMuseum3State();
}

class _PlaceScreenMuseum3State extends State<PlaceScreenMuseum3> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/vist.jpg'),
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
                              Text('Выставочный зал изобразительных искусств',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Экспозиционный зал Краснодарского отдела — это один из крупнейших выставочных центров на "
                                  "Юге Российской Федерации, который начал свою работу весной 1989 года под эгидой городского Министерства культуры. "
                                  "Находится этот зал в самом сердце Краснодара и обладает общей площадью для экспозиций более 1100 кв. м. Средний показатель краевого "
                                  "выставочного зала — почти 100 различных выставок в год, на которых представлены творческие произведения различных мастеров Европы, СНГ и Азии",
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
    const url = 'https://yandex.ru/maps/org/krasnodarskiy_krayevoy_vystavochny_zal_izobrazitelnykh_iskusstv/1137805783/?ll=38.968401%2C45.022457&mode=search&sctx=ZAAAAAgBEAAaKAoSCbnhd9Mte0NAEZnWprG9hEZAEhIJaf0tAfinvD8RrU7OUNzxpj8iBgABAgMEBSgKOABAtc0GSAFqAnJ1nQHNzEw9oAEAqAEAvQHLolvFwgEF15PGngTqAQDyAQD4AQCCAk3QktGL0YHRgtCw0LLQvtGH0L3Ri9C5INC30LDQuyDQuNC30L7QsdGA0LDQt9C40YLQtdC70YzQvdGL0YUg0LjRgdC60YPRgdGB0YLQsooCAJICATKaAgxkZXNrdG9wLW1hcHM%3D&sll=38.968401%2C45.022457&sspn=0.014997%2C0.006005&text=%D0%92%D1%8B%D1%81%D1%82%D0%B0%D0%B2%D0%BE%D1%87%D0%BD%D1%8B%D0%B9%20%D0%B7%D0%B0%D0%BB%20%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B7%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D1%8B%D1%85%20%D0%B8%D1%81%D0%BA%D1%83%D1%81%D1%81%D1%82%D0%B2&z=16.59';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}