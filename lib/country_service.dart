import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:credit_card_flutter/country_model.dart';

class CountryService {
  Future<List<CountryModel>> fetchCountry() async {
    try {
      var dio = Dio(BaseOptions(baseUrl: "https://github.com"));
      var response = await dio.get("mledoze/countries/blob/master/countries.json");

      // JSON structure is like:
      // [
      //   {"name": "Country Name", "iso": "ISO_CODE"},
      //   ...
      // ]
      List<CountryModel> list = countryModelFromJson(response.data);
      print(list.length);
      return list;
    } catch (e) {
      // Handle any errors that occur during the request
      log("Error fetching countries: $e");
      return [];
    }
  }
}
