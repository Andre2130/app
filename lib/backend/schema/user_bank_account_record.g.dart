// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bank_account_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserBankAccountRecord> _$userBankAccountRecordSerializer =
    new _$UserBankAccountRecordSerializer();

class _$UserBankAccountRecordSerializer
    implements StructuredSerializer<UserBankAccountRecord> {
  @override
  final Iterable<Type> types = const [
    UserBankAccountRecord,
    _$UserBankAccountRecord
  ];
  @override
  final String wireName = 'UserBankAccountRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserBankAccountRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bankName;
    if (value != null) {
      result
        ..add('bankName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountNumber;
    if (value != null) {
      result
        ..add('accountNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.routingNumber;
    if (value != null) {
      result
        ..add('routingNumber')
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
  UserBankAccountRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBankAccountRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bankName':
          result.bankName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accountNumber':
          result.accountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'routingNumber':
          result.routingNumber = serializers.deserialize(value,
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

class _$UserBankAccountRecord extends UserBankAccountRecord {
  @override
  final String? bankName;
  @override
  final String? accountNumber;
  @override
  final String? routingNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserBankAccountRecord(
          [void Function(UserBankAccountRecordBuilder)? updates]) =>
      (new UserBankAccountRecordBuilder()..update(updates))._build();

  _$UserBankAccountRecord._(
      {this.bankName, this.accountNumber, this.routingNumber, this.ffRef})
      : super._();

  @override
  UserBankAccountRecord rebuild(
          void Function(UserBankAccountRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBankAccountRecordBuilder toBuilder() =>
      new UserBankAccountRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBankAccountRecord &&
        bankName == other.bankName &&
        accountNumber == other.accountNumber &&
        routingNumber == other.routingNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bankName.hashCode), accountNumber.hashCode),
            routingNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserBankAccountRecord')
          ..add('bankName', bankName)
          ..add('accountNumber', accountNumber)
          ..add('routingNumber', routingNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserBankAccountRecordBuilder
    implements Builder<UserBankAccountRecord, UserBankAccountRecordBuilder> {
  _$UserBankAccountRecord? _$v;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _routingNumber;
  String? get routingNumber => _$this._routingNumber;
  set routingNumber(String? routingNumber) =>
      _$this._routingNumber = routingNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserBankAccountRecordBuilder() {
    UserBankAccountRecord._initializeBuilder(this);
  }

  UserBankAccountRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bankName = $v.bankName;
      _accountNumber = $v.accountNumber;
      _routingNumber = $v.routingNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBankAccountRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBankAccountRecord;
  }

  @override
  void update(void Function(UserBankAccountRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBankAccountRecord build() => _build();

  _$UserBankAccountRecord _build() {
    final _$result = _$v ??
        new _$UserBankAccountRecord._(
            bankName: bankName,
            accountNumber: accountNumber,
            routingNumber: routingNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
