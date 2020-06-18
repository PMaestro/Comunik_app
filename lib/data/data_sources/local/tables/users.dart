import 'package:moor/moor.dart';

///The primary class of hierarchy, a [Users] has only one [ContactLists] and a [ContactList] can have as many contacts
///as its owner social interactions lead him to.
class Users extends Table {
  TextColumn get id => text()();

  TextColumn get fistname => text()();

  TextColumn get lastname => text()();

  TextColumn get email => text()();

  TextColumn get password => text()();

  TextColumn get imageurl => text()();

  TextColumn get birthdate => text()();

  TextColumn get cpf => text()();

  @override
  Set<Column> get primaryKey => {id};
}
