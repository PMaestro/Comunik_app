import 'package:moor/moor.dart';

class Users extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get password => text()();
  TextColumn get imageUrl => text()();
  TextColumn get bithDate => text()();
  TextColumn get cpf => text()();

  @override
  Set<Column> get primaryKey => {id};
}
