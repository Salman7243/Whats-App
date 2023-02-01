import 'package:cloud_firestore/cloud_firestore.dart';

import '../../Domain/entities/user_entity.dart';


class UserModel extends UserEntity {
  UserModel({
    required String name,
    required String email,
    required String phoneNumber,
    required bool isOnline,
    required String uid,
    required String status,
    required String profileUrl,
  }) : super(
          name: name,
          email: email,
          phoneNumber: phoneNumber,
          isOnline: isOnline,
          uid: uid,
          status: status,
          profileUrl: profileUrl,
        );

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    return UserModel(
      name: (snapshot.data() as Map<String,dynamic>)['name'] ?? '',
      email: (snapshot.data() as Map<String,dynamic>)['email'] ?? '',
      phoneNumber: (snapshot.data() as Map<String,dynamic>)['phoneNumber'] ?? '',
      uid: (snapshot.data() as Map<String,dynamic>)['uid'] ?? '',
      isOnline: (snapshot.data() as Map<String,dynamic>)['isOnline'] ?? '',
      profileUrl: (snapshot.data() as Map<String,dynamic>)['profileUrl'] ?? '',
      status:(snapshot.data() as Map<String,dynamic>)['status'] ?? ''
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "name": name,
      "email": email,
      "phoneNumber": phoneNumber,
      "uid": uid,
      "isOnline": isOnline,
      "profileUrl": profileUrl,
      "status": status,
    };
  }
}
