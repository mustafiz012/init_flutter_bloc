library item_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import '../models/results.dart';

import '../models/serializers.dart';

part 'item_model.g.dart';

abstract class ItemModel implements Built<ItemModel, ItemModelBuilder> {
  ItemModel._();

  factory ItemModel([Function(ItemModelBuilder b) updates]) = _$ItemModel;

  @BuiltValueField(wireName: 'page')
  int get page;

  @BuiltValueField(wireName: 'results')
  BuiltList<Results> get results;

  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  String toJson() {
    return json.encode(serializers.serializeWith(ItemModel.serializer, this));
  }

  static ItemModel? fromJson(String jsonString) {
    print("jsonString $jsonString");
    return serializers.deserializeWith(
        ItemModel.serializer, json.decode(jsonString));
  }

  static Serializer<ItemModel> get serializer => _$itemModelSerializer;
}
