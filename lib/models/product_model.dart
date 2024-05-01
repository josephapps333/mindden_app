class ProductModel {
  final String displayName;
  final String type;
  final String description;
  final String fiberUploadMegas;
  final String fiberDownloadMegas;
  final String fiberTechnology;

  ProductModel(
      {required this.displayName,
      required this.type,
      required this.description,
      required this.fiberDownloadMegas,
      required this.fiberUploadMegas,
      required this.fiberTechnology});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      displayName: json["displayName"] ?? "none",
      type: json["type"] ?? "none",
      description: json["description"] ?? "none",
      fiberUploadMegas: json["fiberUploadMegas"].toString() == "null"
          ? "0"
          : json["fiberUploadMegas"].toString(),
      fiberDownloadMegas: json["fiberDownloadMegas"].toString() == "null"
          ? "0"
          : json["fiberDownloadMegas"].toString(),
      fiberTechnology: json["fiberTechnology"] ?? "none",
    );
  }
}//class
