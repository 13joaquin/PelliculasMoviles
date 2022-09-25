// To parse this JSON data, do
//
//     final companyImage = companyImageFromMap(jsonString);

import 'dart:convert';

class CompanyImage {
  CompanyImage({
    required this.id,
    required this.logos,
  });

  int id;
  List<Logo> logos;

  factory CompanyImage.fromJson(String str) =>
      CompanyImage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyImage.fromMap(Map<String, dynamic> json) => CompanyImage(
        id: json["id"] == null ? null : json["id"],
        logos: List<Logo>.from(json["logos"].map((x) => Logo.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "logos": logos == null
            ? null
            : List<dynamic>.from(logos.map((x) => x.toMap())),
      };
}

class Logo {
  Logo({
    required this.aspectRatio,
    required this.filePath,
    required this.height,
    required this.id,
    required this.fileType,
    required this.voteAverage,
    required this.voteCount,
    required this.width,
  });

  double aspectRatio;
  String filePath;
  int height;
  String id;
  String fileType;
  double voteAverage;
  int voteCount;
  int width;

  factory Logo.fromJson(String str) => Logo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Logo.fromMap(Map<String, dynamic> json) => Logo(
        aspectRatio: json["aspect_ratio"] == null
            ? null
            : json["aspect_ratio"].toDouble(),
        filePath: json["file_path"] == null ? null : json["file_path"],
        height: json["height"] == null ? null : json["height"],
        id: json["id"] == null ? null : json["id"],
        fileType: json["file_type"] == null ? null : json["file_type"],
        voteAverage: json["vote_average"] == null
            ? null
            : json["vote_average"].toDouble(),
        voteCount: json["vote_count"] == null ? null : json["vote_count"],
        width: json["width"] == null ? null : json["width"],
      );

  Map<String, dynamic> toMap() => {
        "aspect_ratio": aspectRatio == null ? null : aspectRatio,
        "file_path": filePath == null ? null : filePath,
        "height": height == null ? null : height,
        "id": id == null ? null : id,
        "file_type": fileType == null ? null : fileType,
        "vote_average": voteAverage == null ? null : voteAverage,
        "vote_count": voteCount == null ? null : voteCount,
        "width": width == null ? null : width,
      };
}
