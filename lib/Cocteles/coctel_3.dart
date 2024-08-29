// ignore_for_file: unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:tarea_consumoapis/Cocteles/coctel_1.dart';
import 'package:tarea_consumoapis/model.dart';
import 'package:tarea_consumoapis/service.dart';

class Coctel_3 extends StatefulWidget {
  const Coctel_3({super.key});

  @override
  State<Coctel_3> createState() => _Coctel_3State();
}

class _Coctel_3State extends State<Coctel_3> {
  late Future<Cocteles> futureCocteles;
  @override
  void initState() {
    super.initState();
    futureCocteles = fetchCocteles(17210);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 3, 3),
      body: buildFutureBuilder(futureCocteles),
      appBar: AppBar(
        leading: IconButton(
            color: Colors.white60,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: const Text(
            style: TextStyle(
              color: Colors.white60,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            'Bramble!'),
      ),
    ));
  }
}

FutureBuilder<Cocteles> buildFutureBuilder(futurecocteles) {
  return FutureBuilder<Cocteles>(
    future: futurecocteles,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                Image.network(
                    width: 200, snapshot.data!.drinks[0].strDrinkThumb),    
                const SizedBox(
                  width: 30,
                  height: 30,
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 400,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                                snapshot.data!.drinks[0].strIngredient1,
                              ),
                              SizedBox(
                                width: 100,
                                child: Image.network(
                                    'https://www.thecocktaildb.com/images/ingredients/gin-Medium.png'),
                              ),
                              Text(
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                  ),
                                  snapshot.data!.drinks[0].strMeasure1),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  snapshot.data!.drinks[0].strIngredient2),
                              SizedBox(
                                width: 100,
                                child: Image.network(
                                    'https://www.thecocktaildb.com/images/ingredients/lemon%20juice-Medium.png'),
                              ),
                              Text(
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                  ),
                                  snapshot.data!.drinks[0].strMeasure2),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  snapshot.data!.drinks[0].strIngredient3),
                              SizedBox(
                                width: 100,
                                child: Image.network(
                                    'https://www.thecocktaildb.com/images/ingredients/Sugar%20Syrup.png'),
                              ),
                              Text(
                                  style: TextStyle(color: Colors.grey[300]),
                                  snapshot.data!.drinks[0].strMeasure3),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  snapshot.data!.drinks[0].strIngredient4),
                              SizedBox(
                                width: 100,
                                child: Image.network(
                                    'https://www.thecocktaildb.com/images/ingredients/Creme%20de%20Mure.png'),
                              ),
                              Text(
                                  style: TextStyle(color: Colors.grey[300]),
                                  snapshot.data!.drinks[0].strMeasure4),
                            ],
                          ),
                        ],
                      ),

                          
                        
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                  height: 15,
                ),
                const SizedBox(
                  height: 20,
                  child: Text(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                      'Instrucciones'),
                ),
                const SizedBox(
                  width: 0,
                  height: 10,
                ),
                SizedBox(
                  width: 400,
                  child: Text(
                    textAlign: TextAlign.center,
                    snapshot.data!.drinks[0].strInstructions,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ],
        );
      } else if (snapshot.hasError) {
        return Text('${snapshot.error}');
      }
      return const Center(child: CircularProgressIndicator());
    },
  );
}
