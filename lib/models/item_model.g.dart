// GENERATED CODE - DO NOT MODIFY BY HAND

part of item_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemModel> _$itemModelSerializer = new _$ItemModelSerializer();

class _$ItemModelSerializer implements StructuredSerializer<ItemModel> {
  @override
  final Iterable<Type> types = const [ItemModel, _$ItemModel];
  @override
  final String wireName = 'ItemModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Results)])),
      'total_pages',
      serializers.serialize(object.totalPages,
          specifiedType: const FullType(int)),
      'total_results',
      serializers.serialize(object.totalResults,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ItemModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Results)]))!
              as BuiltList<Object?>);
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemModel extends ItemModel {
  @override
  final int page;
  @override
  final BuiltList<Results> results;
  @override
  final int totalPages;
  @override
  final int totalResults;

  factory _$ItemModel([void Function(ItemModelBuilder)? updates]) =>
      (new ItemModelBuilder()..update(updates))._build();

  _$ItemModel._(
      {required this.page,
      required this.results,
      required this.totalPages,
      required this.totalResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'ItemModel', 'page');
    BuiltValueNullFieldError.checkNotNull(results, 'ItemModel', 'results');
    BuiltValueNullFieldError.checkNotNull(
        totalPages, 'ItemModel', 'totalPages');
    BuiltValueNullFieldError.checkNotNull(
        totalResults, 'ItemModel', 'totalResults');
  }

  @override
  ItemModel rebuild(void Function(ItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemModelBuilder toBuilder() => new ItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemModel &&
        page == other.page &&
        results == other.results &&
        totalPages == other.totalPages &&
        totalResults == other.totalResults;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), results.hashCode), totalPages.hashCode),
        totalResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ItemModel')
          ..add('page', page)
          ..add('results', results)
          ..add('totalPages', totalPages)
          ..add('totalResults', totalResults))
        .toString();
  }
}

class ItemModelBuilder implements Builder<ItemModel, ItemModelBuilder> {
  _$ItemModel? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  ListBuilder<Results>? _results;
  ListBuilder<Results> get results =>
      _$this._results ??= new ListBuilder<Results>();
  set results(ListBuilder<Results>? results) => _$this._results = results;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  int? _totalResults;
  int? get totalResults => _$this._totalResults;
  set totalResults(int? totalResults) => _$this._totalResults = totalResults;

  ItemModelBuilder();

  ItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _results = $v.results.toBuilder();
      _totalPages = $v.totalPages;
      _totalResults = $v.totalResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemModel;
  }

  @override
  void update(void Function(ItemModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemModel build() => _build();

  _$ItemModel _build() {
    _$ItemModel _$result;
    try {
      _$result = _$v ??
          new _$ItemModel._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'ItemModel', 'page'),
              results: results.build(),
              totalPages: BuiltValueNullFieldError.checkNotNull(
                  totalPages, 'ItemModel', 'totalPages'),
              totalResults: BuiltValueNullFieldError.checkNotNull(
                  totalResults, 'ItemModel', 'totalResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ItemModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
