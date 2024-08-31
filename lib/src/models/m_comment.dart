import 'package:dart/src/enums/e_main.dart';

class Comment {
  final String author;
  final DateTime date;
  final String text;
  final EditorialStatus editorialStatus;

  const Comment({
    required this.author,
    required this.date,
    required this.text,
    required this.editorialStatus,
  });
}
