import 'package:api_barajas/Model/civilization_model.dart';
import 'package:dio/dio.dart';

class ProviderCivilization{
  final _url = 'https://age-of-empires-2-api.herokuapp.com/api/v1/civilizations';
  final  _http = Dio();


  Future<List<CivilizationModel>> obtenerCivilizations() async{
    final response = await _http.get(_url);
    List<dynamic> data = response.data['civilizations'];
    final listaCivilization=
       data.map((civilizations) => CivilizationModel.fromMapJson(civilizations)).toList();

       listaCivilization.map((dato) => print(dato.name));
    return listaCivilization;
  } 
}