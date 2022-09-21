// To parse this JSON data, do
//
//     final searchRespond = searchRespondFromMap(jsonString);

// ignore_for_file: prefer_if_null_operators, prefer_null_aware_operators, unnecessary_null_comparison

import 'dart:convert';
import 'package:pelicula2022/models/model.dart';

class SearchRespond {
  SearchRespond({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  int page;
  List<Movie> results;
  int totalPages;
  int totalResults;

  factory SearchRespond.fromJson(String str) =>
      SearchRespond.fromMap(json.decode(str));

  factory SearchRespond.fromMap(Map<String, dynamic> json) => SearchRespond(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}
