import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:comunik/data/data_sources/local/tables/contact_list.dart';
import 'package:moor/moor.dart';

part 'contact_list_dao.g.dart';

@UseDao(tables: [ContactLists])
class ContactListDao extends DatabaseAccessor<MyDatabase> with _$ContactListDaoMixin {
  ContactListDao(MyDatabase db) : super(db);

  Future insert(Insertable<ContactList> contactsList) => into(db.contactLists).insert(contactsList);

  Future<List<ContactList>> getAllContactListFromUser(String ownerId) =>
      (select(db.contactLists)..where((tbl) => tbl.ownerId.equals(ownerId))).get();
  Stream<List<ContactList>> watchAllContactListFromUser(String ownerId) =>
      (select(db.contactLists)..where((tbl) => tbl.ownerId.equals(ownerId))).watch();

  //U
  Future updateContactListFromUser(ContactList contactList) =>
      (update(db.contactLists)..where((t) => t.ownerId.equals(contactList.ownerId))).replace(contactList);

  //D  need to check if it has the ownerId and the contactId
  Future deleteUserById(ContactList contactList) =>
      (delete(db.contactLists)..where((t) => t.ownerId.equals(contactList.ownerId))).go();
}
