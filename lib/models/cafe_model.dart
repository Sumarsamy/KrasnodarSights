import 'package:kurs/models/eatplace_model.dart';
class Cafe {
  String imageUrl;
  String city;
  String type;
  List<EatPlace>eatplacesP;
  List<EatPlace>eatplacesC;
  List<EatPlace>eatplacesB;

  Cafe({
    required this.imageUrl,
    required this.city,
    required this.type,
    required this.eatplacesP,
    required this.eatplacesC,
    required this.eatplacesB,
});
}
List<EatPlace>eatplacesP = [
  EatPlace (
    imageUrl: 'images/katkat.jpg',
    name: 'Катенька-Катюша',
    address: 'ул.Красная, 16',
    sredch: '1200 руб./чел',
    startTimes: ['11:00','00:00'],
    rating: 4,
    link: 'https://katenkarest.ru/?ysclid=lilv3i5h7t404583640'
  ),
  EatPlace (
    imageUrl: 'images/tori.jpg',
    name: 'Tori Ramen',
    address: 'ул.Красная, 174/3',
    sredch: '400 руб./чел',
    startTimes: ['11:00','23:00'],
    rating: 5,
      link: 'https://toriramen.ru/?ysclid=lilv4dr09v596973639'
  ),
  EatPlace (
    imageUrl: 'images/ret.jpg',
    name: 'Рётей',
    address: 'ул.Разведчика Леонова, 7А',
    sredch: '6000 руб./чел',
    startTimes: ['11:00','23:00'],
    rating: 5,
      link: 'https://ryotei.ru/'
  ),
];

List<EatPlace>eatplacesC = [
  EatPlace (
    imageUrl: 'images/nahl.jpg',
    name: 'Нахлебник',
    address: 'ул.,Рашпилевская, 106',
    sredch: '400 руб./чел',
    startTimes: ['09:00','23:00'],
    rating: 4,
      link: 'https://nahlebnikbar.ru/?ysclid=lilv758o6d979628884'
  ),
  EatPlace (
    imageUrl: 'images/vafh.jpg',
    name: 'ВафлиВафли',
    address: 'ул.Красная, 159',
    sredch: '300 руб./чел',
    startTimes: ['09:00','21:00'],
    rating: 3,
      link: 'http://fr.vaflivafli.com/'
  ),
  EatPlace (
    imageUrl: 'images/uni.jpg',
    name: 'Уни',
    address: 'ул.Бульварное кольцо, 23',
    sredch: '500 руб./чел',
    startTimes: ['10:00','23:00'],
    rating: 3,
      link: 'http://www.unipizza.ru/zakaz.html?ysclid=lilv8ccryk422751527'
  ),
];

List<EatPlace>eatplacesB = [
  EatPlace (
    imageUrl: 'images/XXL.webp',
    name: 'Кулибин Паб',
    address: 'ул.,Карасунская, 83',
    sredch: '600 руб./чел',
    startTimes: ['16:00','02:00'],
    rating: 5,
      link: 'https://kulibinpub.ru/?ysclid=lilvdk0atm179648106'
  ),
  EatPlace (
    imageUrl: 'images/zelk.webp',
    name: 'Зелёный кот',
    address: 'ул.1 Мая, 214',
    sredch: '400 руб./чел',
    startTimes: ['11:00','01:00'],
    rating: 3,
      link: 'https://taplink.cc/greencatbar'
  ),
  EatPlace (
    imageUrl: 'images/gor.jpg',
    name: 'Горький бар',
    address: 'ул.Горького, 102',
    sredch: '500 руб./чел',
    startTimes: ['18:00','03:00'],
    rating: 4,
      link: 'https://barhopping-krd.ru/gorkiybar'
  ),
];

final List<Cafe> cafes = [
  Cafe (
    imageUrl: 'images/ret.jpg',
    type: 'Рестораны',
    city: 'Краснодар',
    eatplacesP: eatplacesP,
    eatplacesC: eatplacesC,
    eatplacesB: eatplacesB,
  ),
  Cafe (
    imageUrl: 'images/uni.jpg',
    type: 'Кафе',
    city: 'Краснодар',
    eatplacesP: eatplacesP,
    eatplacesC: eatplacesC,
    eatplacesB: eatplacesB,
  ),
  Cafe (
    imageUrl: 'images/gor.jpg',
    type: 'Бары',
    city: 'Краснодар',
    eatplacesP: eatplacesP,
    eatplacesC: eatplacesC,
    eatplacesB: eatplacesB,
  ),
];