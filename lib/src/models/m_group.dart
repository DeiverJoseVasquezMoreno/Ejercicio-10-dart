import 'package:dart/src/models/m_moderator.dart';
import 'package:dart/src/models/m_sub_group.dart';

class Group {
  final String groupName;
  final DateTime creationDate;
  final int memberCount;
  final bool isSubgroup;

  final Moderator moderator;
  final List<SubGroup> subgroups;

  const Group({
    required this.groupName,
    required this.creationDate,
    required this.memberCount,
    required this.isSubgroup,
    required this.moderator,
    required this.subgroups,
  });
}
