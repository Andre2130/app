// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanListRecord> _$loanListRecordSerializer =
    new _$LoanListRecordSerializer();

class _$LoanListRecordSerializer
    implements StructuredSerializer<LoanListRecord> {
  @override
  final Iterable<Type> types = const [LoanListRecord, _$LoanListRecord];
  @override
  final String wireName = 'LoanListRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.loan;
    if (value != null) {
      result
        ..add('loan')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.loanUser;
    if (value != null) {
      result
        ..add('loanUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  LoanListRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'loan':
          result.loan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'loanUser':
          result.loanUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$LoanListRecord extends LoanListRecord {
  @override
  final BuiltList<String>? loan;
  @override
  final DocumentReference<Object?>? loanUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanListRecord([void Function(LoanListRecordBuilder)? updates]) =>
      (new LoanListRecordBuilder()..update(updates))._build();

  _$LoanListRecord._({this.loan, this.loanUser, this.ffRef}) : super._();

  @override
  LoanListRecord rebuild(void Function(LoanListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanListRecordBuilder toBuilder() =>
      new LoanListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanListRecord &&
        loan == other.loan &&
        loanUser == other.loanUser &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, loan.hashCode), loanUser.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanListRecord')
          ..add('loan', loan)
          ..add('loanUser', loanUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanListRecordBuilder
    implements Builder<LoanListRecord, LoanListRecordBuilder> {
  _$LoanListRecord? _$v;

  ListBuilder<String>? _loan;
  ListBuilder<String> get loan => _$this._loan ??= new ListBuilder<String>();
  set loan(ListBuilder<String>? loan) => _$this._loan = loan;

  DocumentReference<Object?>? _loanUser;
  DocumentReference<Object?>? get loanUser => _$this._loanUser;
  set loanUser(DocumentReference<Object?>? loanUser) =>
      _$this._loanUser = loanUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanListRecordBuilder() {
    LoanListRecord._initializeBuilder(this);
  }

  LoanListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loan = $v.loan?.toBuilder();
      _loanUser = $v.loanUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanListRecord;
  }

  @override
  void update(void Function(LoanListRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanListRecord build() => _build();

  _$LoanListRecord _build() {
    _$LoanListRecord _$result;
    try {
      _$result = _$v ??
          new _$LoanListRecord._(
              loan: _loan?.build(), loanUser: loanUser, ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loan';
        _loan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoanListRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
