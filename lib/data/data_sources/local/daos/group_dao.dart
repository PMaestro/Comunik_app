import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:comunik/data/data_sources/local/tables/groups.dart';
import 'package:moor/moor.dart';

part 'group_dao.g.dart';

@UseDao(tables: [Groups])
class GroupDao extends DatabaseAccessor<MyDatabase> with _$GroupDaoMixin {
  GroupDao(MyDatabase db) : super(db);

  Future insertGroup(Insertable<Group> group) => into(db.groups).insert(group);

  Future<Group> getGroupById(int groupId) => (select(db.groups)..where((t) => t.id.equals(groupId))).getSingle();
  Future<List<Group>> getAllGroups() => select(db.groups).get();
  Stream<List<Group>> watchAllGroups() => select(db.groups).watch();

  //U
  Future updateGroup(Group group) => (update(db.groups)..where((t) => t.id.equals(group.id))).replace(group);

  //D  need to check if it has the ownerId and the contactId
  Future deleteGroupById(Group group) => (delete(db.groups)..where((t) => t.id.equals(group.id))).go();
}
