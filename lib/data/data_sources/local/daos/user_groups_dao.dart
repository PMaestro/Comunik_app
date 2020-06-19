import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:comunik/data/data_sources/local/tables/user_groups.dart';
import 'package:moor/moor.dart';

part 'user_groups_dao.g.dart';

@UseDao(tables: [UserGroups])
class UserGroupsDao extends DatabaseAccessor<MyDatabase> with _$UserGroupsDaoMixin {
  UserGroupsDao(MyDatabase db) : super(db);
  //C
  Future insertUserGroup(Insertable<UserGroup> userGroup) => into(db.userGroups).insert(userGroup);

  //R
  Future<UserGroup> getUserGroup(String id) => (select(db.userGroups)..where((t) => t.groupId.equals(id))).getSingle();
  Future<List<UserGroup>> getAllUserGroups(String userId) =>
      (select(db.userGroups)..where((tbl) => tbl.participantId.equals(userId))).get();
  Stream<List<UserGroup>> watchAllUserGroups(String userId) =>
      (select(db.userGroups)..where((tbl) => tbl.participantId.equals(userId))).watch();

  //U
  Future updateUserGroup(UserGroup userGroup) =>
      (update(db.userGroups)..where((t) => t.groupId.equals(userGroup.groupId))).replace(userGroup);

  //D
  Future deleteUserGroupById(String groupId) => (delete(db.userGroups)..where((t) => t.groupId.equals(groupId))).go();
}
