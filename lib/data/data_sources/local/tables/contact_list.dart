import 'package:moor/moor.dart';

///This table represents a contact list owned by a [Users] to
///represent the relationship of a user that has other users as contacts.
class ContactLists extends Table {
  TextColumn get ownerId => text().customConstraint('REFERENCES users(id)')();

  TextColumn get contactId => text().customConstraint('REFERENCES users(id)')();
}
