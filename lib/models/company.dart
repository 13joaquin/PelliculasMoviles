// To parse this JSON data, do
//
//     final company = companyFromMap(jsonString);

import 'dart:convert';

class Company {
  Company({
    required this.description,
    required this.headquarters,
    required this.homepage,
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
    required this.parentCompany,
  });

  String description;
  String headquarters;
  String homepage;
  int id;
  String logoPath;
  String name;
  String originCountry;
  dynamic parentCompany;

  factory Company.fromJson(String str) => Company.fromMap(json.decode(str));

  factory Company.fromMap(Map<String, dynamic> json) => Company(
        description: json["description"] == null ? null : json["description"],
        headquarters:
            json["headquarters"] == null ? null : json["headquarters"],
        homepage: json["homepage"] == null ? null : json["homepage"],
        id: json["id"] == null ? null : json["id"],
        logoPath: json["logo_path"] == null ? null : json["logo_path"],
        name: json["name"] == null ? null : json["name"],
        originCountry:
            json["origin_country"] == null ? null : json["origin_country"],
        parentCompany: json["parent_company"],
      );
}
