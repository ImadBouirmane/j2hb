import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feed_back_record.g.dart';

abstract class FeedBackRecord
    implements Built<FeedBackRecord, FeedBackRecordBuilder> {
  static Serializer<FeedBackRecord> get serializer =>
      _$feedBackRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Titre')
  String get titre;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'Image')
  String get image;

  @nullable
  @BuiltValueField(wireName: 'TimeCreated')
  DateTime get timeCreated;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FeedBackRecordBuilder builder) => builder
    ..titre = ''
    ..description = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FeedBack');

  static Stream<FeedBackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FeedBackRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FeedBackRecord._();
  factory FeedBackRecord([void Function(FeedBackRecordBuilder) updates]) =
      _$FeedBackRecord;

  static FeedBackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFeedBackRecordData({
  String titre,
  String description,
  String image,
  DateTime timeCreated,
}) =>
    serializers.toFirestore(
        FeedBackRecord.serializer,
        FeedBackRecord((f) => f
          ..titre = titre
          ..description = description
          ..image = image
          ..timeCreated = timeCreated));
