import 'package:dart/src/models/m_group.dart';

class Moderator {
  static int _lastId = 0;

  final int id;
  final List<Group> managedGroups;

  Moderator({
    required this.managedGroups,
  }) : id = _incrementId();

  void approveRequest() {
    //TODO: Logic to approve request
  }

  void rejectRequest() {
    //TODO: Logic to reject request
  }

  void expelUser() {
    //TODO: Logic to expel user
  }

  static int _incrementId() {
    _lastId += 1;
    return _lastId;
  }
}
