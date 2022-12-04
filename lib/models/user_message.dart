import 'package:avera_chat/models/user.dart';

class UserMessage {
  int? id;
  User? user;
  String? message;
  int? messageAnswerId;
  String? imagePath;
  bool? viewed;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  UserMessage(
      {this.id,
      this.user,
      this.message,
      this.messageAnswerId,
      this.imagePath,
      this.viewed,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  factory UserMessage.fromJson(Map<String, dynamic> json) {
    return UserMessage();
  }
}
