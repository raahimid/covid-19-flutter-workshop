import 'package:http/http.dart' as http;
import 'dart:convert' show json;
import 'package:intl/intl.dart';

Map WorldData;
Map USData;

final String Global = "https://corona.lmao.ninja/v3/covid-19/all";
final String USA = "https://corona.lmao.ninja/v3/covid-19/countries/US";

fetchGlobalData() async{

  final response = await http.get(Global);

  if (response.statusCode == 200){

    WorldData = json.decode(response.body);


  } else {

    throw Exception ('Failed load the data');
  }

}

fetchUSData() async{

  final response = await http.get(USA);

  if (response.statusCode == 200){

    USData = json.decode(response.body);


  } else {

    throw Exception ('Failed load the data');
  }

}

Future fetchData() async{
  fetchGlobalData();
  fetchUSData();
}

final formatter = new NumberFormat('#,###');