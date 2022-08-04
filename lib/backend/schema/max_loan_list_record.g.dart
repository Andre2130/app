// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'max_loan_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaxLoanListRecord> _$maxLoanListRecordSerializer =
    new _$MaxLoanListRecordSerializer();

class _$MaxLoanListRecordSerializer
    implements StructuredSerializer<MaxLoanListRecord> {
  @override
  final Iterable<Type> types = const [MaxLoanListRecord, _$MaxLoanListRecord];
  @override
  final String wireName = 'MaxLoanListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MaxLoanListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.oneStar;
    if (value != null) {
      result
        ..add('oneStar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.twoStar;
    if (value != null) {
      result
        ..add('twoStar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.threeStar;
    if (value != null) {
      result
        ..add('threeStar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.fourStar;
    if (value != null) {
      result
        ..add('fourStar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.fiveStar;
    if (value != null) {
      result
        ..add('fiveStar')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MaxLoanListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaxLoanListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'oneStar':
          result.oneStar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'twoStar':
          result.twoStar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'threeStar':
          result.threeStar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'fourStar':
          result.fourStar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'fiveStar':
          result.fiveStar.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MaxLoanListRecord extends MaxLoanListRecord {
  @override
  final BuiltList<int>? oneStar;
  @override
  final BuiltList<int>? twoStar;
  @override
  final BuiltList<int>? threeStar;
  @override
  final BuiltList<int>? fourStar;
  @override
  final BuiltList<int>? fiveStar;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MaxLoanListRecord(
          [void Function(MaxLoanListRecordBuilder)? updates]) =>
      (new MaxLoanListRecordBuilder()..update(updates))._build();

  _$MaxLoanListRecord._(
      {this.oneStar,
      this.twoStar,
      this.threeStar,
      this.fourStar,
      this.fiveStar,
      this.ffRef})
      : super._();

  @override
  MaxLoanListRecord rebuild(void Function(MaxLoanListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaxLoanListRecordBuilder toBuilder() =>
      new MaxLoanListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaxLoanListRecord &&
        oneStar == other.oneStar &&
        twoStar == other.twoStar &&
        threeStar == other.threeStar &&
        fourStar == other.fourStar &&
        fiveStar == other.fiveStar &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, oneStar.hashCode), twoStar.hashCode),
                    threeStar.hashCode),
                fourStar.hashCode),
            fiveStar.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaxLoanListRecord')
          ..add('oneStar', oneStar)
          ..add('twoStar', twoStar)
          ..add('threeStar', threeStar)
          ..add('fourStar', fourStar)
          ..add('fiveStar', fiveStar)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MaxLoanListRecordBuilder
    implements Builder<MaxLoanListRecord, MaxLoanListRecordBuilder> {
  _$MaxLoanListRecord? _$v;

  ListBuilder<int>? _oneStar;
  ListBuilder<int> get oneStar => _$this._oneStar ??= new ListBuilder<int>();
  set oneStar(ListBuilder<int>? oneStar) => _$this._oneStar = oneStar;

  ListBuilder<int>? _twoStar;
  ListBuilder<int> get twoStar => _$this._twoStar ??= new ListBuilder<int>();
  set twoStar(ListBuilder<int>? twoStar) => _$this._twoStar = twoStar;

  ListBuilder<int>? _threeStar;
  ListBuilder<int> get threeStar =>
      _$this._threeStar ??= new ListBuilder<int>();
  set threeStar(ListBuilder<int>? threeStar) => _$this._threeStar = threeStar;

  ListBuilder<int>? _fourStar;
  ListBuilder<int> get fourStar => _$this._fourStar ??= new ListBuilder<int>();
  set fourStar(ListBuilder<int>? fourStar) => _$this._fourStar = fourStar;

  ListBuilder<int>? _fiveStar;
  ListBuilder<int> get fiveStar => _$this._fiveStar ??= new ListBuilder<int>();
  set fiveStar(ListBuilder<int>? fiveStar) => _$this._fiveStar = fiveStar;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MaxLoanListRecordBuilder() {
    MaxLoanListRecord._initializeBuilder(this);
  }

  MaxLoanListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneStar = $v.oneStar?.toBuilder();
      _twoStar = $v.twoStar?.toBuilder();
      _threeStar = $v.threeStar?.toBuilder();
      _fourStar = $v.fourStar?.toBuilder();
      _fiveStar = $v.fiveStar?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaxLoanListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaxLoanListRecord;
  }

  @override
  void update(void Function(MaxLoanListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaxLoanListRecord build() => _build();

  _$MaxLoanListRecord _build() {
    _$MaxLoanListRecord _$result;
    try {
      _$result = _$v ??
          new _$MaxLoanListRecord._(
              oneStar: _oneStar?.build(),
              twoStar: _twoStar?.build(),
              threeStar: _threeStar?.build(),
              fourStar: _fourStar?.build(),
              fiveStar: _fiveStar?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oneStar';
        _oneStar?.build();
        _$failedField = 'twoStar';
        _twoStar?.build();
        _$failedField = 'threeStar';
        _threeStar?.build();
        _$failedField = 'fourStar';
        _fourStar?.build();
        _$failedField = 'fiveStar';
        _fiveStar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MaxLoanListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
