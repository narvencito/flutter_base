 import 'dart:convert';

List<MovieResponseModel> movieResponseModelFromJson(String str) => List<MovieResponseModel>.from(json.decode(str).map((x) => MovieResponseModel.fromJson(x)));

String movieResponseModelToJson(List<MovieResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MovieResponseModel {
    MovieResponseModel({
        required this.id,
        this.primaryImage,
        required this.titleType,
        required this.titleText,
        required this.releaseYear,
         this.releaseDate,
    });

    String id;
    PrimaryImage? primaryImage;
    TitleType titleType;
    TitleText titleText;
    ReleaseYear releaseYear;
    ReleaseDate? releaseDate;

    factory MovieResponseModel.fromJson(Map<String, dynamic> json) => MovieResponseModel(
        id: json["id"],
        primaryImage: json["primaryImage"] == null ? null : PrimaryImage.fromJson(json["primaryImage"]),
        titleType: TitleType.fromJson(json["titleType"]),
        titleText: TitleText.fromJson(json["titleText"]),
        releaseYear: ReleaseYear.fromJson(json["releaseYear"]),
        releaseDate: json["releaseDate"]== null ? null: ReleaseDate.fromJson(json["releaseDate"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "primaryImage": primaryImage!.toJson(),
        "titleType": titleType.toJson(),
        "titleText": titleText.toJson(),
        "releaseYear": releaseYear.toJson(),
        "releaseDate": releaseDate!.toJson(),
    };
}

class PrimaryImage {
    PrimaryImage({
        required this.id,
        required this.width,
        required this.height,
        required this.url,
        required this.caption,
        required this.typename,
    });

    String id;
    int width;
    int height;
    String url;
    Caption caption;
    String typename;

    factory PrimaryImage.fromJson(Map<String, dynamic> json) => PrimaryImage(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        caption: Caption.fromJson(json["caption"]),
        typename: json["__typename"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "caption": caption.toJson(),
        "__typename": typename,
    };
}

class Caption {
    Caption({
        required this.plainText,
        required this.typename,
    });

    String plainText;
    String typename;

    factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        plainText: json["plainText"],
        typename: json["__typename"],
    );

    Map<String, dynamic> toJson() => {
        "plainText": plainText,
        "__typename": typename,
    };
}

class ReleaseDate {
    ReleaseDate({
         this.day,
         this.month,
         this.year,
         this.typename,
    });

    int? day;
    int? month;
    int? year;
    String? typename;

    factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
        day: json["day"],
        month: json["month"],
        year: json["year"],
        typename: json["__typename"],
    );

    Map<String, dynamic> toJson() => {
        "day": day,
        "month": month,
        "year": year,
        "__typename": typename,
    };
}

class ReleaseYear {
    ReleaseYear({
        required this.year,
        this.endYear,
        required this.typename,
    });

    int year;
    dynamic endYear;
    String typename;

    factory ReleaseYear.fromJson(Map<String, dynamic> json) => ReleaseYear(
        year: json["year"],
        endYear: json["endYear"],
        typename: json["__typename"],
    );

    Map<String, dynamic> toJson() => {
        "year": year,
        "endYear": endYear,
        "__typename": typename,
    };
}

class TitleText {
    TitleText({
        required this.text,
        required this.typename,
    });

    String text;
    String typename;

    factory TitleText.fromJson(Map<String, dynamic> json) => TitleText(
        text: json["text"],
        typename: json["__typename"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "__typename": typename,
    };
}

class TitleType {
    TitleType({
        required this.text,
        required this.id,
        required this.isSeries,
        required this.isEpisode,
        required this.typename,
    });

    String text;
    String id;
    bool isSeries;
    bool isEpisode;
    String typename;

    factory TitleType.fromJson(Map<String, dynamic> json) => TitleType(
        text: json["text"],
        id: json["id"],
        isSeries: json["isSeries"],
        isEpisode: json["isEpisode"],
        typename: json["__typename"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
        "id": id,
        "isSeries": isSeries,
        "isEpisode": isEpisode,
        "__typename": typename,
    };
}
