import 'package:moor/moor.dart';

///A table that represents messages exchanged between [Users]
class Messages extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get time => text()();

  TextColumn get senderId => text()();

  //the one that receive the message
  TextColumn get groupOrUserId => text()();

  TextColumn get messageText => text()();

  BoolColumn get isLiked => boolean().withDefault(const Constant(false))();

  BoolColumn get unRead => boolean().withDefault(const Constant(false))();
}
