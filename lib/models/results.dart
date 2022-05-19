library results;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../models/serializers.dart';

part 'results.g.dart';

abstract class Results implements Built<Results, ResultsBuilder> {
  Results._();

  factory Results([updates(ResultsBuilder b)]) = _$Results;

  @BuiltValueField(wireName: 'adult')
  bool? get adult;

  @BuiltValueField(wireName: 'backdrop_path')
  String? get backdropPath;

  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int>? get genreIds;

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'original_language')
  String? get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String? get originalTitle;

  @BuiltValueField(wireName: 'overview')
  String? get overview;

  @BuiltValueField(wireName: 'popularity')
  double? get popularity;

  @BuiltValueField(wireName: 'poster_path')
  String? get posterPath;

  @BuiltValueField(wireName: 'release_date')
  String? get releaseDate;

  @BuiltValueField(wireName: 'title')
  String? get title;

  @BuiltValueField(wireName: 'video')
  bool? get video;

  @BuiltValueField(wireName: 'vote_average')
  double? get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int? get voteCount;

  String toJson() {
    return json.encode(serializers.serializeWith(Results.serializer, this));
  }

  static Results? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Results.serializer, json.decode(jsonString));
  }

  static Serializer<Results> get serializer => _$resultsSerializer;
}
