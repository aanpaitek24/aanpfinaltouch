import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "time_in" field.
  DateTime? _timeIn;
  DateTime? get timeIn => _timeIn;
  bool hasTimeIn() => _timeIn != null;

  // "tim_out" field.
  DateTime? _timOut;
  DateTime? get timOut => _timOut;
  bool hasTimOut() => _timOut != null;

  // "guardian_phone" field.
  String? _guardianPhone;
  String get guardianPhone => _guardianPhone ?? '';
  bool hasGuardianPhone() => _guardianPhone != null;

  // "_icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "unread_total" field.
  int? _unreadTotal;
  int get unreadTotal => _unreadTotal ?? 0;
  bool hasUnreadTotal() => _unreadTotal != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  bool hasTotal() => _total != null;

  // "color_unread" field.
  String? _colorUnread;
  String get colorUnread => _colorUnread ?? '';
  bool hasColorUnread() => _colorUnread != null;

  // "type_notification" field.
  String? _typeNotification;
  String get typeNotification => _typeNotification ?? '';
  bool hasTypeNotification() => _typeNotification != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _timeIn = snapshotData['time_in'] as DateTime?;
    _timOut = snapshotData['tim_out'] as DateTime?;
    _guardianPhone = snapshotData['guardian_phone'] as String?;
    _icon = snapshotData['_icon'] as String?;
    _unreadTotal = castToType<int>(snapshotData['unread_total']);
    _title = snapshotData['title'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _total = castToType<int>(snapshotData['total']);
    _colorUnread = snapshotData['color_unread'] as String?;
    _typeNotification = snapshotData['type_notification'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  DocumentReference? user,
  String? name,
  DateTime? timeIn,
  DateTime? timOut,
  String? guardianPhone,
  String? icon,
  int? unreadTotal,
  String? title,
  DateTime? time,
  int? total,
  String? colorUnread,
  String? typeNotification,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'name': name,
      'time_in': timeIn,
      'tim_out': timOut,
      'guardian_phone': guardianPhone,
      '_icon': icon,
      'unread_total': unreadTotal,
      'title': title,
      'time': time,
      'total': total,
      'color_unread': colorUnread,
      'type_notification': typeNotification,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.name == e2?.name &&
        e1?.timeIn == e2?.timeIn &&
        e1?.timOut == e2?.timOut &&
        e1?.guardianPhone == e2?.guardianPhone &&
        e1?.icon == e2?.icon &&
        e1?.unreadTotal == e2?.unreadTotal &&
        e1?.title == e2?.title &&
        e1?.time == e2?.time &&
        e1?.total == e2?.total &&
        e1?.colorUnread == e2?.colorUnread &&
        e1?.typeNotification == e2?.typeNotification;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.user,
        e?.name,
        e?.timeIn,
        e?.timOut,
        e?.guardianPhone,
        e?.icon,
        e?.unreadTotal,
        e?.title,
        e?.time,
        e?.total,
        e?.colorUnread,
        e?.typeNotification
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
