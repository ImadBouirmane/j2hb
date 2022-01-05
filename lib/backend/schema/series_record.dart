import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'series_record.g.dart';

abstract class SeriesRecord
    implements Built<SeriesRecord, SeriesRecordBuilder> {
  static Serializer<SeriesRecord> get serializer => _$seriesRecordSerializer;

  @nullable
  int get list;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SeriesRecordBuilder builder) =>
      builder..list = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Series');

  static Stream<SeriesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SeriesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SeriesRecord._();
  factory SeriesRecord([void Function(SeriesRecordBuilder) updates]) =
      _$SeriesRecord;

  static SeriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSeriesRecordData({
  int list,
}) =>
    serializers.toFirestore(
        SeriesRecord.serializer, SeriesRecord((s) => s..list = list));
