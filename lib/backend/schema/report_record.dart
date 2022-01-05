import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'report_record.g.dart';

abstract class ReportRecord
    implements Built<ReportRecord, ReportRecordBuilder> {
  static Serializer<ReportRecord> get serializer => _$reportRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Titre')
  String get titre;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'ScreenSchot')
  String get screenSchot;

  @nullable
  @BuiltValueField(wireName: 'TimeCreated')
  DateTime get timeCreated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ReportRecordBuilder builder) => builder
    ..titre = ''
    ..description = ''
    ..screenSchot = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ReportRecord._();
  factory ReportRecord([void Function(ReportRecordBuilder) updates]) =
      _$ReportRecord;

  static ReportRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createReportRecordData({
  String titre,
  String description,
  String screenSchot,
  DateTime timeCreated,
}) =>
    serializers.toFirestore(
        ReportRecord.serializer,
        ReportRecord((r) => r
          ..titre = titre
          ..description = description
          ..screenSchot = screenSchot
          ..timeCreated = timeCreated));
