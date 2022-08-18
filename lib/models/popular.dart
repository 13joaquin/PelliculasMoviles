// To parse this JSON data, do
//
//     final popularRespond = popularRespondFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, unnecessary_null_comparison, prefer_null_aware_operators
import 'package:pelicula2022/models/model.dart';
import 'dart:convert';

class PopularRespond {
  PopularRespond({
    required this.id,
    required this.cast,
    required this.crew,
  });

  int id;
  List<Cast> cast;
  List<Cast> crew;

  factory PopularRespond.fromJson(String str) =>
      PopularRespond.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PopularRespond.fromMap(Map<String, dynamic> json) => PopularRespond(
        id: json["id"] == null ? null : json["id"],
        cast: List<Cast>.from(json["cast"].map((x) => Cast.fromMap(x))),
        crew: List<Cast>.from(json["crew"].map((x) => Cast.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "cast": cast == null
            ? null
            : List<dynamic>.from(cast.map((x) => x.toMap())),
        "crew": crew == null
            ? null
            : List<dynamic>.from(crew.map((x) => x.toMap())),
      };
}

class Cast {
  Cast({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartment,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
    required this.castId,
    required this.character,
    required this.creditId,
    required this.order,
    required this.department,
    required this.job,
  });

  bool adult;
  int gender;
  int id;
  String knownForDepartment;
  String name;
  String originalName;
  double popularity;
  String profilePath;
  int castId;
  String character;
  String creditId;
  int order;
  String department;
  String job;

  factory Cast.fromJson(String str) => Cast.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cast.fromMap(Map<String, dynamic> json) => Cast(
        adult: json["adult"] == null ? null : json["adult"],
        gender: json["gender"] == null ? null : json["gender"],
        id: json["id"] == null ? null : json["id"],
        knownForDepartment: json["known_for_department"] == null
            ? null
            : json["known_for_department"],
        name: json["name"] == null ? null : json["name"],
        originalName:
            json["original_name"] == null ? null : json["original_name"],
        popularity:
            json["popularity"] == null ? null : json["popularity"].toDouble(),
        profilePath: json["profile_path"] == null ? null : json["profile_path"],
        castId: json["cast_id"] == null ? null : json["cast_id"],
        character: json["character"] == null ? null : json["character"],
        creditId: json["credit_id"] == null ? null : json["credit_id"],
        order: json["order"] == null ? null : json["order"],
        department: json["department"] == null ? null : json["department"],
        job: json["job"] == null ? null : json["job"],
      );

  Map<String, dynamic> toMap() => {
        "adult": adult == null ? null : adult,
        "gender": gender == null ? null : gender,
        "id": id == null ? null : id,
        "known_for_department":
            knownForDepartment == null ? null : knownForDepartment,
        "name": name == null ? null : name,
        "original_name": originalName == null ? null : originalName,
        "popularity": popularity == null ? null : popularity,
        "profile_path": profilePath == null ? null : profilePath,
        "cast_id": castId == null ? null : castId,
        "character": character == null ? null : character,
        "credit_id": creditId == null ? null : creditId,
        "order": order == null ? null : order,
        "department": department == null ? null : department,
        "job": job == null ? null : job,
      };
}
