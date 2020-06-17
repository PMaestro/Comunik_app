import 'package:moor/moor.dart';

class UserGroups extends Table {
  TextColumn get groupId => text()();

  TextColumn get participantId => text().customConstraint("REFERENCES users(id)")();

  @override
  Set<Column> get primaryKey => {groupId, participantId};
}
