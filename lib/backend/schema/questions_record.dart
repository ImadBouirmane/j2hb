import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'questions_record.g.dart';

abstract class QuestionsRecord
    implements Built<QuestionsRecord, QuestionsRecordBuilder> {
  static Serializer<QuestionsRecord> get serializer =>
      _$questionsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Image')
  String get image;

  @nullable
  @BuiltValueField(wireName: 'Video')
  String get video;

  @nullable
  @BuiltValueField(wireName: 'Audio')
  String get audio;

  @nullable
  @BuiltValueField(wireName: 'Text')
  String get text;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(QuestionsRecordBuilder builder) => builder
    ..image = ''
    ..video = ''
    ..audio = ''
    ..text = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Questions');

  static Stream<QuestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<QuestionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  QuestionsRecord._();
  factory QuestionsRecord([void Function(QuestionsRecordBuilder) updates]) =
      _$QuestionsRecord;

  static QuestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createQuestionsRecordData({
  String image,
  String video,
  String audio,
  String text,
}) =>
    serializers.toFirestore(
        QuestionsRecord.serializer,
        QuestionsRecord((q) => q
          ..image = image
          ..video = video
          ..audio = audio
          ..text = text));
