import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';

class EatPlaceScreenCafe1 extends StatefulWidget{

  @override
  _EatPlaceScreenCafe1State createState() => _EatPlaceScreenCafe1State();
}

class _EatPlaceScreenCafe1State extends State<EatPlaceScreenCafe1> {

  @override
  Widget build(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/nahl.jpg'),
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
                              Text('Нахлебник',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text("Вы можете попробовать здесь вкусно приготовленные гамбургеры, утку и сэндвичи. "
                                  "В этом ресторане можно заказать хорошие сырники и неплохой наполеон. Здесь рекомендуют "
                                  "попробовать вкусное пиво, глинтвейн или сангрию. Обязательно закажите неплохой американо, "
                                  "лимонад или чай. Посетите Нахлебника со всей семьей: здесь хорошее детское меню.",
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
    const url = 'https://yandex.ru/maps/org/nakhlebnik/6580677066/?ll=38.972431%2C45.036484&mode=search&sctx=ZAAAAAgBEAAaKAoSCQtET8qkfENAEYtrfCb7g0ZAEhIJ4rGfxVIkjz8RlGdeDrvveD8iBgABAgMEBSgKOABAuc0GSAFqAnJ1nQHNzEw9oAEAqAEAvQHVGuWIwgEFytP0wRjqAQDyAQD4AQCCAhLQndCw0YXQu9C10LHQvdC40LqKAgCSAgCaAgxkZXNrdG9wLW1hcHM%3D&sll=38.972431%2C45.036484&sspn=0.030412%2C0.012175&text=%D0%9D%D0%B0%D1%85%D0%BB%D0%B5%D0%B1%D0%BD%D0%B8%D0%BA&z=15.57';
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }_launchtel() async {
    const url = "tel:+78612920777";
    if (await canLaunch (url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
  _launchsite() async {
    const url = "https://nahlebnikbar.ru/?ysclid=linn5jz61832813056";
    if (await canLaunch(url)
    ) {
      await launch(url);
    } else {
      throw 'Невозможно перейти по ссылке $url. Проверьте соединение с интернетом!';
    }
  }
}