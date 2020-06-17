import 'package:comunik/data/data_sources/local/tables/contact_list.dart';
import 'package:moor/moor.dart';

///The primary class of hierarchy, a [Users] has only one [ContactLists] and a [ContactList] can have as many contacts
///as its owner social interactions lead him to.
class Users extends Table {
  TextColumn get id => text()();

  TextColumn get fistName => text()();

  TextColumn get lastName => text()();

  TextColumn get email => text()();

  TextColumn get password => text()();

  TextColumn get imageUrl => text()();

  TextColumn get bithDate => text()();

  TextColumn get cpf => text()();

  IntColumn get contactList => integer().customConstraint('REFERENCES contactLists(id)')();

  @override
  Set<Column> get primaryKey => {id};
}
