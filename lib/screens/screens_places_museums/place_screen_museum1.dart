import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenMuseum1 extends StatefulWidget{

  @override
  _PlaceScreenMuseum1State createState() => _PlaceScreenMuseum1State();
}

class _PlaceScreenMuseum1State extends State<PlaceScreenMuseum1> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/muz2.jpeg'),
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
                              Text('Музей-заповедник имени Е.Д.Фелицына',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Историко-археологический музей-заповедник был основан в 1879 году. Открыл его краевед и историк Е.Д. Фелицын, "
                                  "чье имя сейчас носит этот музей. В роскошном особняке находится множество коллекций, "
                                  "которые знакомят посетителей с жизнью народов и племен, проживающих ранее на территории "
                                  "Кубани. Здесь широко раскрыта история кубанского казачества, ведь фонды музея насчитывают более 420 "
                                  "тысяч объектов. Особого внимания заслуживает Золотая кладовая, демонстрирующая старинные изделия из "
                                  "драгоценных металлов.",
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
    const url = 'https://yandex.ru/maps/org/gbu_krasnodarskogo_kraya_krasnodarskiy_gosudarstvenny_istoriko_arkheologicheskiy_muzey_zapovednik_imeni_ye_d_felitsyna/1170662728/?ll=38.977892%2C45.040639&mode=search&sll=38.982006%2C45.059385&sspn=0.022573%2C0.009034&text=%D0%9C%D1%83%D0%B7%D0%B5%D0%B9-%D0%B7%D0%B0%D0%BF%D0%BE%D0%B2%D0%B5%D0%B4%D0%BD%D0%B8%D0%BA%20%D0%B8%D0%BC%D0%B5%D0%BD%D0%B8%20%D0%95.%D0%94.%D0%A4%D0%B5%D0%BB%D0%B8%D1%86%D1%8B%D0%BD%D0%B0&z=13.97';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}