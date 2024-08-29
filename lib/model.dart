// To parse this JSON data, do
//
//     final cocteles = coctelesFromJson(jsonString);

import 'dart:convert';

Cocteles coctelesFromJson(String str) => Cocteles.fromJson(json.decode(str));

String coctelesToJson(Cocteles data) => json.encode(data.toJson());

class Cocteles {
  List<Drink> drinks;

  Cocteles({
    required this.drinks,
  });

  factory Cocteles.fromJson(Map<String, dynamic> json) => Cocteles(
        drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
      };
}

class Drink {
  String idDrink;
  String strDrink;
  String strDrinkThumb;
  String strInstructions;
  String strIngredient1;
  String strIngredient2;
  String strIngredient3;
  String strIngredient4;
  String strMeasure1;
  String strMeasure2;
  String strMeasure3;
  String strMeasure4;

  Drink({
    required this.idDrink,
    required this.strDrink,
    required this.strDrinkThumb,
    required this.strInstructions,
    required this.strIngredient1,
    required this.strIngredient2,
    required this.strIngredient3,
    required this.strIngredient4,
    required this.strMeasure1,
    required this.strMeasure2,
    required this.strMeasure3,
    required this.strMeasure4,

  });

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        idDrink: json["idDrink"],
        strDrink: json["strDrink"],
        strDrinkThumb: json["strDrinkThumb"],
        strInstructions: json["strInstructions"],
        strIngredient1: json["strIngredient1"],
        strIngredient2: json["strIngredient2"],
        strIngredient3: json["strIngredient3"],
        strIngredient4: json["strIngredient4"],
        strMeasure1: json["strMeasure1"],
        strMeasure2: json["strMeasure2"],
        strMeasure3: json["strMeasure3"],
        strMeasure4: json["strMeasure4"],
      );

  Map<String, dynamic> toJson() => {
        "idDrink": idDrink,
        "strDrink": strDrink,
        "strDrinkThumb": strDrinkThumb,
        "strInstructions": strInstructions,
        "strIngredient1": strIngredient1,
        "strIngredient2": strIngredient2,
        "strIngredient3": strIngredient3,
        "strIngredient4": strIngredient4,
        "strMeasure1": strMeasure1,
        "strMeasure2": strMeasure2,
        "strMeasure3": strMeasure3,
        "strMeasure4": strMeasure4,
      };
}
