import 'package:kurs/models/place_model.dart';
class Destination{
  String imageUrl;
  String type;
  String city;
  String description;
  List<Place>placesP;
  List<Place>placesM;
  List<Place>placesC;
  List<Place>placesMu;
  List<Place>placesT;

  Destination({
    required  this.imageUrl,
    required this.type,
    required this.city,
    required  this.description,
    required this.placesP,
    required this.placesM,
    required this.placesC,
    required this.placesMu,
    required this.placesT,
});
}

List<Place>placesP = [
  Place(
    imageUrl: 'images/galic.jpg',
    name: 'Парк Краснодар',
    address: 'ул.Разведчика Леонова, 1',
    startTimes: ['9:00','23:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/chist.jpg',
    name: 'Чистяковская роща',
    address: 'ул.Колхозная, 86',
    startTimes: ['9:00','22:00'],
    rating: 3,
  ),
  Place(
    imageUrl: 'images/dendr.jpeg',
    name: 'Ботанический сад им. И.С. Косенко',
    address: 'ул. Калинина, 13',
    startTimes: ['7:00','22:00'],
    rating: 4,
  ),
];

List<Place>placesM = [
  Place(
    imageUrl: 'images/arka.jpg',
    name: 'Триумфальная арка',
    address: ' ул.Красная,Александровский бульвар',
    startTimes: ['00:00','00:00'],
    rating: 4,
  ),
  Place(
    imageUrl: 'images/ekat.jpeg',
    name: 'Памятник Екатерине II',
    address: 'ул.Постовая,Екатерининский сквер',
    startTimes: ['00:00','00:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/shurik.jpg',
    name: 'Студенты Шурик и Лида',
    address: 'ул.Красная,Александровский бульвар',
    startTimes: ['00:00','00:00'],
    rating: 3,
  ),
  Place(
    imageUrl: 'images/avrora.jpg',
    name: 'Кинотеатр "Аврора"',
    address: 'ул.Красная,169',
    startTimes: ['09:00','21:00'],
    rating: 3,
  ),
];

List<Place>placesC = [
  Place(
    imageUrl: 'images/sob.jpg',
    name: 'Собор Александра Невского',
    address: ' ул.Постовая, 26',
    startTimes: ['07:00','19:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/sobor.jpg',
    name: 'Свято-Георгиевский храм',
    address: 'ул.Седина, 170',
    startTimes: ['06:00','18:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/sobor2.jpg',
    name: 'Свято-Троицкий собор',
    address: 'ул.Фрунзе, 65',
    startTimes: ['06:45','19:00'],
    rating: 3,
  ),
];

List<Place>placesMu = [
  Place(
    imageUrl: 'images/muz2.jpeg',
    name: 'Музей-заповедник имени Е.Д.Фелицына',
    address: 'ул.Гимназическая, 69',
    startTimes: ['10:00','18:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/muzk.jpg',
    name: 'Художественный музей имени Ф.А.Коваленко',
    address: 'ул.Красная, 13',
    startTimes: ['10:00','18:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/vist.jpg',
    name: 'Выставочный зал изобразительных искусств',
    address: 'ул.Рашпилевская, 32',
    startTimes: ['12:00','20:00'],
    rating: 4,
  ),
  Place(
    imageUrl: 'images/boyev.jpg',
    name: 'Выставочный зал боевой славы',
    address: 'ул.Береговая, 146',
    startTimes: ['10:00','17:30'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/litm.jpg',
    name: 'Литературный музей Кубани',
    address: 'ул.Постовая, 39/1',
    startTimes: ['10:00','18:00'],
    rating: 3,
  ),
];

List<Place>placesT = [
  Place(
    imageUrl: 'images/mol.jpg',
    name: 'Молодёжный театр',
    address: 'ул.Седина, 28',
    startTimes: ['9:00','23:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/tetr.jpg',
    name: 'Музыкальный театр "Премьера"',
    address: 'ул.Красная, 44',
    startTimes: ['10:00','19:00'],
    rating: 5,
  ),
  Place(
    imageUrl: 'images/kuk.jpg',
    name: 'Кукольный театр',
    address: 'ул.Красная, 31',
    startTimes: ['09:00','19:00'],
    rating: 4,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'images/dendr.jpeg',
    type: 'Парки',
    city: 'Краснодар',
    description: 'Самые красивые зелёные территории города',
    placesP: placesP,
    placesM: placesM,
    placesC: placesC,
    placesMu: placesMu,
    placesT: placesT,
  ),
  Destination(
    imageUrl: 'images/ekat.jpeg',
    type: 'Памятники',
    city: 'Краснодар',
    description: 'Величественные монументы столицы края',
    placesP: placesP,
    placesM: placesM,
    placesC: placesC,
    placesMu: placesMu,
    placesT: placesT,
  ),
  Destination(
    imageUrl: 'images/sobor.jpg',
    type: 'Храмы',
    city: 'Краснодар',
    description: 'Красоты православных сооружений города',
    placesP: placesP,
    placesM: placesM,
    placesC: placesC,
    placesMu: placesMu,
    placesT: placesT,
  ),
  Destination(
    imageUrl: 'images/muzk.jpg',
    type: 'Музеи',
    city: 'Краснодар',
    description: 'Искусство в музеях Краснодара',
    placesP: placesP,
    placesM: placesM,
    placesC: placesC,
    placesMu: placesMu,
    placesT: placesT,
  ),
  Destination(
    imageUrl: 'images/tetr.jpg',
    type: 'Театры',
    city: 'Краснодар',
    description: 'Светская жизнь в театрах города',
    placesP: placesP,
    placesM: placesM,
    placesC: placesC,
    placesMu: placesMu,
    placesT: placesT,
  ),
];