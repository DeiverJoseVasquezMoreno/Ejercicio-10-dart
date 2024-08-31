import 'package:dart/src/models/m_group.dart';

class SubGroup extends Group {
  const SubGroup({
    required super.groupName,
    required super.creationDate,
    required super.memberCount,
    required super.isSubgroup,
    required super.moderator,
    required super.subgroups,
  });
}
