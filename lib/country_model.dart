import 'dart:convert';

List<CountryModel> countryModelFromJson(String str) => List<CountryModel>.from(
    json.decode(str).map((x) => CountryModel.fromJson(x))
);

class CountryModel {
  String? name;
  String? code;  // Adjusted from 'capital' to 'code' to match the JSON data structure

  CountryModel({
    this.name,
    this.code,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: json["name"],
        code: json["code"],  // Correctly map to the 'code' field
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
      };
}
