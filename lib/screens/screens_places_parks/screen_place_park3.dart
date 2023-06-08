import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class PlaceScreenPark3 extends StatefulWidget{

  @override
  _PlaceScreenPark3State createState() => _PlaceScreenPark3State();
}

class _PlaceScreenPark3State extends State<PlaceScreenPark3> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/dendr.jpeg'),
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
                              Text('Ботанический сад им. И.С. Косенко',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Ботанический сад имени профессора И. С. Косенко — это уютный уголок дикой "
                                  "природы в самом центре Краснодара. А также особо охраняемая природная территория "
                                  "с сотнями видов растений не только из разных регионов России, но даже с различных континентов."
                                  "Общая площадь ботанического сада имени профессора И. С. Косенко составляет 46 гектаров. На ней "
                                  "сегодня произрастают более 1200 видов растений на открытой местности. Есть и своя оранжерея. "
                                  "Здесь можно увидеть порядка 300 видов тропических и субтропических культур, которые требуют более теплого климата."
                                  "Неизменная точка притяжения всех гостей ботанического сада — птичник. В вольерах с павлинами уже много лет разводят "
                                  "этих величавых птиц, подойти к которым можно достаточно близко.",
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
    const url = 'https://yandex.ru/maps/org/botanicheskiy_sad_im_i_s_kosenko/1752979417/?ll=38.927487%2C45.057283&mode=search&sctx=ZAAAAAgBEAAaKAoSCdE8gEV%2Bf0NAEQxYchWLh0ZAEhIJ0opvKHy2vj8RCJChYweVqD8iBgABAgMEBSgKOABAI0gBagJydZ0BzcxMPaABAKgBAL0BARZnYsIBBdmv8cMG6gEA8gEA%2BAEAggI70JHQvtGC0LDQvdC40YfQtdGB0LrQuNC5INGB0LDQtCDQuNC8LiDQmC7QoS4g0JrQvtGB0LXQvdC60L6KAgCSAgIzNZoCDGRlc2t0b3AtbWFwcw%3D%3D&sll=38.927487%2C45.057283&sspn=0.018133%2C0.012003&text=%D0%91%D0%BE%D1%82%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9%20%D1%81%D0%B0%D0%B4%20%D0%B8%D0%BC.%20%D0%98.%D0%A1.%20%D0%9A%D0%BE%D1%81%D0%B5%D0%BD%D0%BA%D0%BE&z=15.59';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}