import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_bank_account_record.g.dart';

abstract class UserBankAccountRecord
    implements Built<UserBankAccountRecord, UserBankAccountRecordBuilder> {
  static Serializer<UserBankAccountRecord> get serializer =>
      _$userBankAccountRecordSerializer;

  String? get bankName;

  String? get accountNumber;

  String? get routingNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(UserBankAccountRecordBuilder builder) =>
      builder
        ..bankName = ''
        ..accountNumber = ''
        ..routingNumber = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userBankAccount')
          : FirebaseFirestore.instance.collectionGroup('userBankAccount');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userBankAccount').doc();

  static Stream<UserBankAccountRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserBankAccountRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserBankAccountRecord._();
  factory UserBankAccountRecord(
          [void Function(UserBankAccountRecordBuilder) updates]) =
      _$UserBankAccountRecord;

  static UserBankAccountRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserBankAccountRecordData({
  String? bankName,
  String? accountNumber,
  String? routingNumber,
}) {
  final firestoreData = serializers.toFirestore(
    UserBankAccountRecord.serializer,
    UserBankAccountRecord(
      (u) => u
        ..bankName = bankName
        ..accountNumber = accountNumber
        ..routingNumber = routingNumber,
    ),
  );

  return firestoreData;
}
