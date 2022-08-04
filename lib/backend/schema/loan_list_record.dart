import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_list_record.g.dart';

abstract class LoanListRecord
    implements Built<LoanListRecord, LoanListRecordBuilder> {
  static Serializer<LoanListRecord> get serializer =>
      _$loanListRecordSerializer;

  BuiltList<String>? get loan;

  DocumentReference? get loanUser;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanListRecordBuilder builder) =>
      builder..loan = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loanList');

  static Stream<LoanListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoanListRecord._();
  factory LoanListRecord([void Function(LoanListRecordBuilder) updates]) =
      _$LoanListRecord;

  static LoanListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanListRecordData({
  DocumentReference? loanUser,
}) {
  final firestoreData = serializers.toFirestore(
    LoanListRecord.serializer,
    LoanListRecord(
      (l) => l
        ..loan = null
        ..loanUser = loanUser,
    ),
  );

  return firestoreData;
}
