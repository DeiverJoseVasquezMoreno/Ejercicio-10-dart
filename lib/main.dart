import 'package:dart/src/enums/e_main.dart';
import 'package:dart/src/models/m_main.dart';

void main() {
  // Crear perfiles para los usuarios
  Profile profile1 = Profile(
    websiteURL: "http://user1.com",
    location: "City A",
    dateOfBirth: DateTime.now(),
    photo: "photo1.jpg",
    description: "User 1 Description",
  );

  Profile profile2 = Profile(
    websiteURL: "http://user2.com",
    location: "City B",
    dateOfBirth: DateTime.now(),
    photo: "photo2.jpg",
    description: "User 2 Description",
  );

  // Crear algunos usuarios
  User user1 = User(
    username: "user1",
    password: "pass1",
    email: "user1@example.com",
    phone: "123456789",
    websiteURL: "http://user1.com",
    location: "City A",
    dateOfBirth: DateTime.now(),
    photo: "photo1.jpg",
    description: "User 1 Description",
    emailVerified: true,
    active: true,
    profile: profile1,
    subscribedGroups: [],
    articles: [],
    sentMessages: [],
    notifications: [],
    bookmarks: [],
  );

  User user2 = User(
    username: "user2",
    password: "pass2",
    email: "user2@example.com",
    phone: "987654321",
    websiteURL: "http://user2.com",
    location: "City B",
    dateOfBirth: DateTime.now(),
    photo: "photo2.jpg",
    description: "User 2 Description",
    emailVerified: true,
    active: true,
    profile: profile2,
    subscribedGroups: [],
    articles: [],
    sentMessages: [],
    notifications: [],
    bookmarks: [],
  );

  // Crear algunos grupos y moderadores
  Moderator mod1 = Moderator(managedGroups: []);
  Group group1 = Group(
    groupName: "Group 1",
    creationDate: DateTime.now(),
    memberCount: 100,
    isSubgroup: false,
    moderator: mod1,
    subgroups: [],
  );

  Moderator mod2 = Moderator(managedGroups: []);
  Group group2 = Group(
    groupName: "Group 2",
    creationDate: DateTime.now(),
    memberCount: 150,
    isSubgroup: false,
    moderator: mod2,
    subgroups: [],
  );

  mod1.managedGroups.add(group1);
  mod2.managedGroups.add(group2);

  // Subscribir usuarios a los grupos
  user1.subscribedGroups.add(group1);
  user2.subscribedGroups.add(group2);

  // Crear algunos artículos
  Article article1 = Article(
    creationDate: DateTime.now(),
    author: "User 1",
    summary: "Summary 1",
    content: "Content 1",
    editorialStatus: EditorialStatus.sent,
    comments: [],
  );

  Article article2 = Article(
    creationDate: DateTime.now(),
    author: "User 2",
    summary: "Summary 2",
    content: "Content 2",
    editorialStatus: EditorialStatus.approved,
    comments: [],
  );

  user1.articles.add(article1);
  user2.articles.add(article2);

  // Crear comentarios para los artículos
  Comment comment1 = Comment(
    author: "User 2",
    date: DateTime.now(),
    text: "Great article!",
    editorialStatus: EditorialStatus.approved,
  );

  Comment comment2 = Comment(
    author: "User 1",
    date: DateTime.now(),
    text: "Thanks for the feedback!",
    editorialStatus: EditorialStatus.approved,
  );

  article1.comments.add(comment1);
  article2.comments.add(comment2);

  // Crear mensajes privados
  PrivateMessage message1 = PrivateMessage(
    sender: "User 1",
    receiver: "User 2",
    date: DateTime.now(),
    content: "Hello, how are you?",
  );

  PrivateMessage message2 = PrivateMessage(
    sender: "User 2",
    receiver: "User 1",
    date: DateTime.now(),
    content: "I'm fine, thanks!",
  );

  user1.sentMessages.add(message1);
  user2.sentMessages.add(message2);

  // Crear notificaciones para los usuarios
  Notification notification1 = Notification(
    notificationType: "New Article",
    seen: false,
  );

  Notification notification2 = Notification(
    notificationType: "New Comment",
    seen: false,
  );

  user1.notifications.add(notification1);
  user2.notifications.add(notification2);

  // Crear marcadores
  Bookmark bookmark1 = Bookmark(article: article1);
  Bookmark bookmark2 = Bookmark(article: article2);

  user1.bookmarks.add(bookmark1);
  user2.bookmarks.add(bookmark2);

  // Imprimir algunos datos para demostrar las relaciones
  print("User 1 is subscribed to: ${user1.subscribedGroups[0].groupName}");
  print("User 2 is subscribed to: ${user2.subscribedGroups[0].groupName}");

  print("User 1 posted an article with summary: ${user1.articles[0].summary}");
  print("User 2 commented: ${article1.comments[0].text}");
}
