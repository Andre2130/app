// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanRecord> _$loanRecordSerializer = new _$LoanRecordSerializer();

class _$LoanRecordSerializer implements StructuredSerializer<LoanRecord> {
  @override
  final Iterable<Type> types = const [LoanRecord, _$LoanRecord];
  @override
  final String wireName = 'LoanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.loanName;
    if (value != null) {
      result
        ..add('LoanName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanAmount;
    if (value != null) {
      result
        ..add('LoanAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanCreated;
    if (value != null) {
      result
        ..add('LoanCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.loanDescription;
    if (value != null) {
      result
        ..add('LoanDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanerUser;
    if (value != null) {
      result
        ..add('LoanerUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.loanPayback;
    if (value != null) {
      result
        ..add('LoanPayback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.nUmberOfPayments;
    if (value != null) {
      result
        ..add('NUmberOfPayments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LoanRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'LoanName':
          result.loanName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LoanAmount':
          result.loanAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LoanCreated':
          result.loanCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'LoanDescription':
          result.loanDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LoanerUser':
          result.loanerUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'LoanPayback':
          result.loanPayback = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'NUmberOfPayments':
          result.nUmberOfPayments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LoanRecord extends LoanRecord {
  @override
  final String? loanName;
  @override
  final String? loanAmount;
  @override
  final DateTime? loanCreated;
  @override
  final String? loanDescription;
  @override
  final DocumentReference<Object?>? loanerUser;
  @override
  final DateTime? loanPayback;
  @override
  final String? nUmberOfPayments;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanRecord([void Function(LoanRecordBuilder)? updates]) =>
      (new LoanRecordBuilder()..update(updates))._build();

  _$LoanRecord._(
      {this.loanName,
      this.loanAmount,
      this.loanCreated,
      this.loanDescription,
      this.loanerUser,
      this.loanPayback,
      this.nUmberOfPayments,
      this.ffRef})
      : super._();

  @override
  LoanRecord rebuild(void Function(LoanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanRecordBuilder toBuilder() => new LoanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanRecord &&
        loanName == other.loanName &&
        loanAmount == other.loanAmount &&
        loanCreated == other.loanCreated &&
        loanDescription == other.loanDescription &&
        loanerUser == other.loanerUser &&
        loanPayback == other.loanPayback &&
        nUmberOfPayments == other.nUmberOfPayments &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, loanName.hashCode), loanAmount.hashCode),
                            loanCreated.hashCode),
                        loanDescription.hashCode),
                    loanerUser.hashCode),
                loanPayback.hashCode),
            nUmberOfPayments.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanRecord')
          ..add('loanName', loanName)
          ..add('loanAmount', loanAmount)
          ..add('loanCreated', loanCreated)
          ..add('loanDescription', loanDescription)
          ..add('loanerUser', loanerUser)
          ..add('loanPayback', loanPayback)
          ..add('nUmberOfPayments', nUmberOfPayments)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanRecordBuilder implements Builder<LoanRecord, LoanRecordBuilder> {
  _$LoanRecord? _$v;

  String? _loanName;
  String? get loanName => _$this._loanName;
  set loanName(String? loanName) => _$this._loanName = loanName;

  String? _loanAmount;
  String? get loanAmount => _$this._loanAmount;
  set loanAmount(String? loanAmount) => _$this._loanAmount = loanAmount;

  DateTime? _loanCreated;
  DateTime? get loanCreated => _$this._loanCreated;
  set loanCreated(DateTime? loanCreated) => _$this._loanCreated = loanCreated;

  String? _loanDescription;
  String? get loanDescription => _$this._loanDescription;
  set loanDescription(String? loanDescription) =>
      _$this._loanDescription = loanDescription;

  DocumentReference<Object?>? _loanerUser;
  DocumentReference<Object?>? get loanerUser => _$this._loanerUser;
  set loanerUser(DocumentReference<Object?>? loanerUser) =>
      _$this._loanerUser = loanerUser;

  DateTime? _loanPayback;
  DateTime? get loanPayback => _$this._loanPayback;
  set loanPayback(DateTime? loanPayback) => _$this._loanPayback = loanPayback;

  String? _nUmberOfPayments;
  String? get nUmberOfPayments => _$this._nUmberOfPayments;
  set nUmberOfPayments(String? nUmberOfPayments) =>
      _$this._nUmberOfPayments = nUmberOfPayments;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanRecordBuilder() {
    LoanRecord._initializeBuilder(this);
  }

  LoanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loanName = $v.loanName;
      _loanAmount = $v.loanAmount;
      _loanCreated = $v.loanCreated;
      _loanDescription = $v.loanDescription;
      _loanerUser = $v.loanerUser;
      _loanPayback = $v.loanPayback;
      _nUmberOfPayments = $v.nUmberOfPayments;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanRecord;
  }

  @override
  void update(void Function(LoanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanRecord build() => _build();

  _$LoanRecord _build() {
    final _$result = _$v ??
        new _$LoanRecord._(
            loanName: loanName,
            loanAmount: loanAmount,
            loanCreated: loanCreated,
            loanDescription: loanDescription,
            loanerUser: loanerUser,
            loanPayback: loanPayback,
            nUmberOfPayments: nUmberOfPayments,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
