// To parse this JSON data, do
//
//     final popularRespond = popularRespondFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, unnecessary_null_comparison, prefer_null_aware_operators
import 'package:pelicula2022/models/model.dart';
import 'dart:convert';

class PopularRespond {
  PopularRespond({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory PopularRespond.fromJson(String str) =>
      PopularRespond.fromMap(json.decode(str));

  factory PopularRespond.fromMap(Map<String, dynamic> json) => PopularRespond(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
