
//usar api de internet
import 'package:http/http.dart' as http;

import 'package:tarea_consumoapis/model.dart';

Future<Cocteles> fetchCocteles(int id) async {
  final response = await http .get(Uri.parse(

    'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=$id'
  ));

  if (response.statusCode == 200) {
    return coctelesFromJson(response.body);
  } else {
    throw Exception('Failed to load cocteles');
  }
}
