
class ChatModel {
  String name;
  String time;
  String? icon;
  bool inGroup;
  String message;
  bool select = false;
  ChatModel({required this.name, this.icon, required this.time, required this.message, required this.inGroup});
}