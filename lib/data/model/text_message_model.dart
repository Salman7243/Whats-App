import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_platform_interface/src/timestamp.dart';

import '../../Domain/entities/text_message_entity.dart';


class TextMessageModel extends TextMessageEntity {
  TextMessageModel(
 {   required String senderName,
    required String sederUID,
    required String recipientName,
    required String recipientUID,
    required String messageType,
    required String message,
    required String messageId,
    required Timestamp time,}
  ) : super(
    senderName:senderName,
    sederUID: sederUID,
    recipientName: recipientName,
    recipientUID: recipientUID,
    messsageType:messageType,
    message:message,
    messageId:messageId,
    time: time,
        );
  factory TextMessageModel.fromSnapShot(DocumentSnapshot snapshot){
    return TextMessageModel(
      senderName:(snapshot.data() as Map<String,dynamic>)['senderName'] ?? '',
      sederUID: (snapshot.data() as Map<String,dynamic>)['sederUID'] ?? '',
      recipientName: (snapshot.data() as Map<String,dynamic>)['recipientName'] ?? '',
      recipientUID: (snapshot.data() as Map<String,dynamic>)['recipientUID'] ?? '',
      messageType:(snapshot.data() as Map<String,dynamic>)['messageType'] ?? '',
      message:(snapshot.data() as Map<String,dynamic>)['message'] ?? '',
      messageId: (snapshot.data() as Map<String,dynamic>)['messageId'] ?? '',
      time: (snapshot.data() as Map<String,dynamic>)['time'] ?? '',
    );
  }
  Map<String,dynamic> toDocument(){
    return {
      "senderName":senderName,
      "sederUID":sederUID,
      "recipientName":recipientName,
      "recipientUID":recipientUID,
      "messageType":messsageType,
      "message":message,
      "messageId":messageId,
      "time":time,
    };
  }
}
