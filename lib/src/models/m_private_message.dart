class PrivateMessage {
  String sender;
  String receiver;
  DateTime date;
  String content;

  PrivateMessage({
    required this.sender,
    required this.receiver,
    required this.date,
    required this.content,
  });
}
