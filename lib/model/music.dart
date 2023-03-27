// To parse this JSON data, do
//
//     final music = musicFromJson(jsonString);

import 'dart:convert';

Music musicFromJson(String str) => Music.fromJson(json.decode(str));

String musicToJson(Music data) => json.encode(data.toJson());

class Music {
  Music({
    required this.resultCount,
    required this.results,
  });

  int resultCount;
  List<Result> results;

  factory Music.fromJson(Map<String, dynamic> json) => Music(
        resultCount: json["resultCount"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resultCount": resultCount,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.wrapperType,
    this.kind,
    this.collectionId,
    this.trackId,
    required this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.collectionArtistId,
    this.collectionArtistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    required this.artworkUrl60,
    required this.artworkUrl100,
    required this.collectionPrice,
    this.trackPrice,
    this.trackRentalPrice,
    this.collectionHdPrice,
    this.trackHdPrice,
    this.trackHdRentalPrice,
    required this.releaseDate,
    required this.collectionExplicitness,
    this.trackExplicitness,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    required this.country,
    required this.currency,
    required this.primaryGenreName,
    this.contentAdvisoryRating,
    this.longDescription,
    this.hasITunesExtras,
    this.discCount,
    this.discNumber,
    this.shortDescription,
    this.artistId,
    this.artistViewUrl,
    this.copyright,
    this.description,
    this.isStreamable,
    this.feedUrl,
    this.artworkUrl600,
    this.genreIds,
    this.genres,
  });

  WrapperType wrapperType;
  Kind? kind;
  int? collectionId;
  int? trackId;
  String artistName;
  String? collectionName;
  String? trackName;
  String? collectionCensoredName;
  String? trackCensoredName;
  int? collectionArtistId;
  String? collectionArtistViewUrl;
  String? collectionViewUrl;
  String? trackViewUrl;
  String? previewUrl;
  String? artworkUrl30;
  String artworkUrl60;
  String artworkUrl100;
  double collectionPrice;
  double? trackPrice;
  double? trackRentalPrice;
  double? collectionHdPrice;
  double? trackHdPrice;
  double? trackHdRentalPrice;
  DateTime releaseDate;
  CollectionExplicitness collectionExplicitness;
  TrackExplicitness? trackExplicitness;
  int? trackCount;
  int? trackNumber;
  int? trackTimeMillis;
  Country country;
  Currency currency;
  String primaryGenreName;
  ContentAdvisoryRating? contentAdvisoryRating;
  String? longDescription;
  bool? hasITunesExtras;
  int? discCount;
  int? discNumber;
  String? shortDescription;
  int? artistId;
  String? artistViewUrl;
  String? copyright;
  String? description;
  bool? isStreamable;
  String? feedUrl;
  String? artworkUrl600;
  List<String>? genreIds;
  List<String>? genres;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        wrapperType: wrapperTypeValues.map[json["wrapperType"]]!,
        kind: kindValues.map[json["kind"]],
        collectionId: json["collectionId"],
        trackId: json["trackId"],
        artistName: json["artistName"],
        collectionName: json["collectionName"],
        trackName: json["trackName"],
        collectionCensoredName: json["collectionCensoredName"],
        trackCensoredName: json["trackCensoredName"],
        collectionArtistId: json["collectionArtistId"],
        collectionArtistViewUrl: json["collectionArtistViewUrl"],
        collectionViewUrl: json["collectionViewUrl"],
        trackViewUrl: json["trackViewUrl"],
        previewUrl: json["previewUrl"],
        artworkUrl30: json["artworkUrl30"],
        artworkUrl60: json["artworkUrl60"],
        artworkUrl100: json["artworkUrl100"],
        collectionPrice: json["collectionPrice"]?.toDouble(),
        trackPrice: json["trackPrice"]?.toDouble(),
        trackRentalPrice: json["trackRentalPrice"]?.toDouble(),
        collectionHdPrice: json["collectionHdPrice"]?.toDouble(),
        trackHdPrice: json["trackHdPrice"]?.toDouble(),
        trackHdRentalPrice: json["trackHdRentalPrice"]?.toDouble(),
        releaseDate: DateTime.parse(json["releaseDate"]),
        collectionExplicitness:
            collectionExplicitnessValues.map[json["collectionExplicitness"]]!,
        trackExplicitness:
            trackExplicitnessValues.map[json["trackExplicitness"]],
        trackCount: json["trackCount"],
        trackNumber: json["trackNumber"],
        trackTimeMillis: json["trackTimeMillis"],
        country: countryValues.map[json["country"]]!,
        currency: currencyValues.map[json["currency"]]!,
        primaryGenreName: json["primaryGenreName"],
        contentAdvisoryRating:
            contentAdvisoryRatingValues.map[json["contentAdvisoryRating"]],
        longDescription: json["longDescription"],
        hasITunesExtras: json["hasITunesExtras"],
        discCount: json["discCount"],
        discNumber: json["discNumber"],
        shortDescription: json["shortDescription"],
        artistId: json["artistId"],
        artistViewUrl: json["artistViewUrl"],
        copyright: json["copyright"],
        description: json["description"],
        isStreamable: json["isStreamable"],
        feedUrl: json["feedUrl"],
        artworkUrl600: json["artworkUrl600"],
        genreIds: json["genreIds"] == null
            ? []
            : List<String>.from(json["genreIds"]!.map((x) => x)),
        genres: json["genres"] == null
            ? []
            : List<String>.from(json["genres"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "wrapperType": wrapperTypeValues.reverse[wrapperType],
        "kind": kindValues.reverse[kind],
        "collectionId": collectionId,
        "trackId": trackId,
        "artistName": artistName,
        "collectionName": collectionName,
        "trackName": trackName,
        "collectionCensoredName": collectionCensoredName,
        "trackCensoredName": trackCensoredName,
        "collectionArtistId": collectionArtistId,
        "collectionArtistViewUrl": collectionArtistViewUrl,
        "collectionViewUrl": collectionViewUrl,
        "trackViewUrl": trackViewUrl,
        "previewUrl": previewUrl,
        "artworkUrl30": artworkUrl30,
        "artworkUrl60": artworkUrl60,
        "artworkUrl100": artworkUrl100,
        "collectionPrice": collectionPrice,
        "trackPrice": trackPrice,
        "trackRentalPrice": trackRentalPrice,
        "collectionHdPrice": collectionHdPrice,
        "trackHdPrice": trackHdPrice,
        "trackHdRentalPrice": trackHdRentalPrice,
        "releaseDate": releaseDate.toIso8601String(),
        "collectionExplicitness":
            collectionExplicitnessValues.reverse[collectionExplicitness],
        "trackExplicitness": trackExplicitnessValues.reverse[trackExplicitness],
        "trackCount": trackCount,
        "trackNumber": trackNumber,
        "trackTimeMillis": trackTimeMillis,
        "country": countryValues.reverse[country],
        "currency": currencyValues.reverse[currency],
        "primaryGenreName": primaryGenreName,
        "contentAdvisoryRating":
            contentAdvisoryRatingValues.reverse[contentAdvisoryRating],
        "longDescription": longDescription,
        "hasITunesExtras": hasITunesExtras,
        "discCount": discCount,
        "discNumber": discNumber,
        "shortDescription": shortDescription,
        "artistId": artistId,
        "artistViewUrl": artistViewUrl,
        "copyright": copyright,
        "description": description,
        "isStreamable": isStreamable,
        "feedUrl": feedUrl,
        "artworkUrl600": artworkUrl600,
        "genreIds":
            genreIds == null ? [] : List<dynamic>.from(genreIds!.map((x) => x)),
        "genres":
            genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
      };
}

enum CollectionExplicitness { NOT_EXPLICIT, EXPLICIT }

final collectionExplicitnessValues = EnumValues({
  "explicit": CollectionExplicitness.EXPLICIT,
  "notExplicit": CollectionExplicitness.NOT_EXPLICIT
});

enum ContentAdvisoryRating { PG, R, PG_13, G, CLEAN }

final contentAdvisoryRatingValues = EnumValues({
  "Clean": ContentAdvisoryRating.CLEAN,
  "G": ContentAdvisoryRating.G,
  "PG": ContentAdvisoryRating.PG,
  "PG-13": ContentAdvisoryRating.PG_13,
  "R": ContentAdvisoryRating.R
});

enum Country { USA }

final countryValues = EnumValues({"USA": Country.USA});

enum Currency { USD }

final currencyValues = EnumValues({"USD": Currency.USD});

enum Kind { FEATURE_MOVIE, SONG, PODCAST }

final kindValues = EnumValues({
  "feature-movie": Kind.FEATURE_MOVIE,
  "podcast": Kind.PODCAST,
  "song": Kind.SONG
});

enum TrackExplicitness { NOT_EXPLICIT, CLEANED }

final trackExplicitnessValues = EnumValues({
  "cleaned": TrackExplicitness.CLEANED,
  "notExplicit": TrackExplicitness.NOT_EXPLICIT
});

enum WrapperType { TRACK, AUDIOBOOK }

final wrapperTypeValues = EnumValues(
    {"audiobook": WrapperType.AUDIOBOOK, "track": WrapperType.TRACK});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
