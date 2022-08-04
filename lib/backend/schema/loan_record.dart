import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_record.g.dart';

abstract class LoanRecord implements Built<LoanRecord, LoanRecordBuilder> {
  static Serializer<LoanRecord> get serializer => _$loanRecordSerializer;

  @BuiltValueField(wireName: 'LoanName')
  String? get loanName;

  @BuiltValueField(wireName: 'LoanAmount')
  String? get loanAmount;

  @BuiltValueField(wireName: 'LoanCreated')
  DateTime? get loanCreated;

  @BuiltValueField(wireName: 'LoanDescription')
  String? get loanDescription;

  @BuiltValueField(wireName: 'LoanerUser')
  DocumentReference? get loanerUser;

  @BuiltValueField(wireName: 'LoanPayback')
  DateTime? get loanPayback;

  @BuiltValueField(wireName: 'NUmberOfPayments')
  String? get nUmberOfPayments;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanRecordBuilder builder) => builder
    ..loanName = ''
    ..loanAmount = ''
    ..loanDescription = ''
    ..nUmberOfPayments = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Loan');

  static Stream<LoanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoanRecord._();
  factory LoanRecord([void Function(LoanRecordBuilder) updates]) = _$LoanRecord;

  static LoanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanRecordData({
  String? loanName,
  String? loanAmount,
  DateTime? loanCreated,
  String? loanDescription,
  DocumentReference? loanerUser,
  DateTime? loanPayback,
  String? nUmberOfPayments,
}) {
  final firestoreData = serializers.toFirestore(
    LoanRecord.serializer,
    LoanRecord(
      (l) => l
        ..loanName = loanName
        ..loanAmount = loanAmount
        ..loanCreated = loanCreated
        ..loanDescription = loanDescription
        ..loanerUser = loanerUser
        ..loanPayback = loanPayback
        ..nUmberOfPayments = nUmberOfPayments,
    ),
  );

  return firestoreData;
}
