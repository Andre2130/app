import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'max_loan_list_record.g.dart';

abstract class MaxLoanListRecord
    implements Built<MaxLoanListRecord, MaxLoanListRecordBuilder> {
  static Serializer<MaxLoanListRecord> get serializer =>
      _$maxLoanListRecordSerializer;

  BuiltList<int>? get oneStar;

  BuiltList<int>? get twoStar;

  BuiltList<int>? get threeStar;

  BuiltList<int>? get fourStar;

  BuiltList<int>? get fiveStar;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MaxLoanListRecordBuilder builder) => builder
    ..oneStar = ListBuilder()
    ..twoStar = ListBuilder()
    ..threeStar = ListBuilder()
    ..fourStar = ListBuilder()
    ..fiveStar = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('maxLoanList');

  static Stream<MaxLoanListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MaxLoanListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MaxLoanListRecord._();
  factory MaxLoanListRecord([void Function(MaxLoanListRecordBuilder) updates]) =
      _$MaxLoanListRecord;

  static MaxLoanListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMaxLoanListRecordData() {
  final firestoreData = serializers.toFirestore(
    MaxLoanListRecord.serializer,
    MaxLoanListRecord(
      (m) => m
        ..oneStar = null
        ..twoStar = null
        ..threeStar = null
        ..fourStar = null
        ..fiveStar = null,
    ),
  );

  return firestoreData;
}
