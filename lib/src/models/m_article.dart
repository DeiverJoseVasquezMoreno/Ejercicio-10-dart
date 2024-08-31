import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_comment.dart';

class Article {
  static int _lastId = 0;

  final int id;
  final DateTime creationDate;
  final String author;
  final String summary;
  final String content;
  final EditorialStatus editorialStatus;

  final List<Comment> comments;

  Article({
    required this.creationDate,
    required this.author,
    required this.summary,
    required this.content,
    required this.editorialStatus,
    required this.comments,
  }) : id = _incrementId();

  static int _incrementId() {
    _lastId += 1;
    return _lastId;
  }
}
