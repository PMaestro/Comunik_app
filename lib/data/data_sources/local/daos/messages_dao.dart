import 'package:comunik/data/data_sources/local/database/database.dart';
import 'package:comunik/data/data_sources/local/tables/messages.dart';
import 'package:moor/moor.dart';

part 'messages_dao.g.dart';

@UseDao(tables: [Messages])
class MessagesDao extends DatabaseAccessor<MyDatabase> with _$MessagesDaoMixin {
  MessagesDao(MyDatabase db) : super(db);

  //C
  Future insertMessage(Insertable<Message> message) => into(db.messages).insert(message);

  //R
  Future<Message> getMessageById(int id) => (select(db.messages)..where((t) => t.id.equals(id))).getSingle();

  Future<List<Message>> getAllMessageByUserId(String userId) =>
      (select(db.messages)..where((t) => t.senderId.equals(userId))).get();

  Future<List<Message>> getAllMessages() => select(db.messages).get();

  Stream<List<Message>> watchAllMessagesByUserId(String userId) =>
      (select(db.messages)..where((t) => t.senderId.equals(userId))).watch();

  //U
  Future updateMessage(Message message) =>
      (update(db.messages)..where((t) => t.id.equals(message.id))).replace(message);

  //D
  Future deleteMessageById(String userId) => (delete(db.users)..where((t) => t.id.equals(userId))).go();
}
