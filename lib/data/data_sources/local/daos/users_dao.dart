import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:comunik/data/data_sources/local/tables/users.dart';
import 'package:moor/moor.dart';

part 'users_dao.g.dart';

@UseDao(tables: [Users])
class UsersDao extends DatabaseAccessor<MyDatabase> with _$UsersDaoMixin {
  UsersDao(MyDatabase db) : super(db);

  //C
  Future insertUser(Insertable<User> user) => into(db.users).insert(user);

  //R
  Future<User> getUserById(String id) => (select(db.users)..where((t) => t.id.equals(id))).getSingle();
  Future<List<User>> getAllUsers() => select(db.users).get();
  Stream<List<User>> watchAllUsers() => select(db.users).watch();

  //U
  Future updateUser(User user) => (update(db.users)..where((t) => t.id.equals(user.id))).replace(user);

  //D
  Future deleteUserById(String userId) => (delete(db.users)..where((t) => t.id.equals(userId))).go();
}
