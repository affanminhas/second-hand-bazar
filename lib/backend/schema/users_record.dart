import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "isBuyer" field.
  bool? _isBuyer;
  bool get isBuyer => _isBuyer ?? false;
  bool hasIsBuyer() => _isBuyer != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "delivery_type" field.
  String? _deliveryType;
  String get deliveryType => _deliveryType ?? '';
  bool hasDeliveryType() => _deliveryType != null;

  // "isSeller" field.
  bool? _isSeller;
  bool get isSeller => _isSeller ?? false;
  bool hasIsSeller() => _isSeller != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _isBuyer = snapshotData['isBuyer'] as bool?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _role = snapshotData['role'] as String?;
    _deliveryType = snapshotData['delivery_type'] as String?;
    _isSeller = snapshotData['isSeller'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  bool? isBuyer,
  String? phoneNumber,
  String? displayName,
  int? age,
  String? role,
  String? deliveryType,
  bool? isSeller,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'isBuyer': isBuyer,
      'phone_number': phoneNumber,
      'display_name': displayName,
      'age': age,
      'role': role,
      'delivery_type': deliveryType,
      'isSeller': isSeller,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.isBuyer == e2?.isBuyer &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayName == e2?.displayName &&
        e1?.age == e2?.age &&
        e1?.role == e2?.role &&
        e1?.deliveryType == e2?.deliveryType &&
        e1?.isSeller == e2?.isSeller;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.isBuyer,
        e?.phoneNumber,
        e?.displayName,
        e?.age,
        e?.role,
        e?.deliveryType,
        e?.isSeller
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
