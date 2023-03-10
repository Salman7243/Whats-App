import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
import 'package:whatsapp/domain/entities/my_chat_entity.dart';


class MyChatModel extends MyChatEntity {
  MyChatModel({
    required String senderName,
    required String senderUID,
    required String recipientName,
    required String recipientUID,
    required String channelId,
    required String profileURL,
    required String recipientPhoneNumber,
    required String senderPhoneNumber,
    required String recentTextMessage,
    required bool isRead,
    required bool isArchived,
    required Timestamp time,
  }) : super(
          senderName: senderName,
          senderUID: senderUID,
          recipientName: recipientName,
          recipientUID: recipientUID,
          channelId: channelId,
          profileURL: profileURL,
          recipientPhoneNumber: recipientPhoneNumber,
          senderPhoneNumber: senderPhoneNumber,
          recentTextMessage: recentTextMessage,
          isRead: isRead,
          isArchived: isArchived,
          time: time,
        );

  factory MyChatModel.fromSnapShot(DocumentSnapshot snapshot) {
    return MyChatModel(
      senderName: (snapshot.data() as Map<String,dynamic>)['senderName'] ?? '',
      senderUID: (snapshot.data() as Map<String,dynamic>)['senderUID'] ?? '',
      senderPhoneNumber:(snapshot.data() as Map<String,dynamic>)['senderPhoneNumber'] ?? '',
      recipientName:(snapshot.data() as Map<String,dynamic>)['recipientName'] ?? '',
      recipientUID: (snapshot.data() as Map<String,dynamic>)['recipientUID'] ?? '',
      recipientPhoneNumber:(snapshot.data() as Map<String,dynamic>)['recipientPhoneNumber'] ?? '',
      channelId:(snapshot.data() as Map<String,dynamic>)['channelId'] ?? '',
      time:(snapshot.data() as Map<String,dynamic>)['time'] ?? '',
      isArchived:(snapshot.data() as Map<String,dynamic>)['isArchived'] ?? '',
      isRead: (snapshot.data() as Map<String,dynamic>)['isRead'] ?? '',
      recentTextMessage: (snapshot.data() as Map<String,dynamic>)['recentTextMessage'] ?? '',
      profileURL: (snapshot.data() as Map<String,dynamic>)['profileURL'] ?? '',
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      "senderName": senderName,
      "senderUID": senderUID,
      "recipientName": recipientName,
      "recipientUID": recipientUID,
      "channelId": channelId,
      "profileURL": profileURL,
      "recipientPhoneNumber": recipientPhoneNumber,
      "senderPhoneNumber": senderPhoneNumber,
      "recentTextMessage": recentTextMessage,
      "isRead": isRead,
      "isArchived": isArchived,
      "time": time,
    };
  }
}
