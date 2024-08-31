import 'package:dart/src/models/m_article.dart';
import 'package:dart/src/models/m_bookmark.dart';
import 'package:dart/src/models/m_group.dart';
import 'package:dart/src/models/m_private_message.dart';
import 'package:dart/src/models/m_profile.dart';
import 'package:dart/src/models/m_notification.dart';

class User {
  final String username;
  final String password;
  final String email;
  final String phone;
  final String websiteURL;
  final String location;
  final DateTime dateOfBirth;
  final String photo;
  final String description;
  final bool emailVerified;
  final bool active;

  final Profile profile;
  final List<Group> subscribedGroups;
  final List<Article> articles;
  final List<PrivateMessage> sentMessages;
  final List<Notification> notifications;
  final List<Bookmark> bookmarks;

  const User({
    required this.username,
    required this.password,
    required this.email,
    required this.phone,
    required this.websiteURL,
    required this.location,
    required this.dateOfBirth,
    required this.photo,
    required this.description,
    required this.emailVerified,
    required this.active,
    required this.profile,
    required this.subscribedGroups,
    required this.articles,
    required this.sentMessages,
    required this.notifications,
    required this.bookmarks,
  });
}
