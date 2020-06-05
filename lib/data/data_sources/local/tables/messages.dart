import 'package:moor/moor.dart';

class Messages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get time => text()();
  TextColumn get senderId => text()();
  TextColumn get messageText => text()();
  BoolColumn get isLiked => boolean().withDefault(const Constant(false))();
  BoolColumn get unRead => boolean().withDefault(const Constant(false))();
}
