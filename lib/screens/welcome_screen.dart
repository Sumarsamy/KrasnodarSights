import 'dart:core';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kurs/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget{

  final String nextRoute;
  WelcomeScreen({required this.nextRoute});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("images/kras.jpg",
              height: double.infinity,
              width:double.infinity,
              fit: BoxFit.cover,
          ),
          SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children:[
                  Spacer(),
                  Text(
                  'Добро пожаловать в KrasnoSight!',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  )
                  ),
                  SizedBox(height: 15.0),
                  Text(
                    'Самые интересные места города собраны здесь!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            height: 1.6,
                        )
                  ),
                  SizedBox(height: 15.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                  child: Container(
                    height: 55.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/google.png",
                        height: 30.0,
                          width: 30.0,
                        ),
                        const SizedBox(
                            width: 10.0,
                        ),
                        const Text("Войти с Google",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,),
                        )
                      ],
                    )
                  ),
                  ),
                const SizedBox(height: 20.0,),
                InkWell(
                  onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                        },
                child: Container(
                    height: 55.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("images/yan.png",
                            height: 30.0,
                            width: 30.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text("Войти с YandexID",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ]
                    )
                ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.06,
                ),
                ],
              ),
          ),
          ),
          ),
      ],
      ),
    );
  }
}