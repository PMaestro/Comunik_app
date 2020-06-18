// These imports are only needed to open the database
import 'dart:io';

import 'package:comunik/data/data_sources/local/daos/contact_list_dao.dart';
import 'package:comunik/data/data_sources/local/daos/group_dao.dart';
import 'package:comunik/data/data_sources/local/daos/messages_dao.dart';
import 'package:comunik/data/data_sources/local/daos/user_groups_dao.dart';
import 'package:comunik/data/data_sources/local/daos/users_dao.dart';
import 'package:comunik/data/data_sources/local/tables/contact_list.dart';
import 'package:comunik/data/data_sources/local/tables/groups.dart';
import 'package:comunik/data/data_sources/local/tables/messages.dart';
import 'package:comunik/data/data_sources/local/tables/user_groups.dart';
import 'package:comunik/data/data_sources/local/tables/users.dart';
import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(
    tables: [Messages, Users, ContactLists, Groups, UserGroups],
    daos: [MessagesDao, UsersDao, ContactListDao, GroupDao, UserGroupsDao])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  User sheila = User(
    id: 'bb58735f-9869-4755-9937-6210b16a93f8',
    fistname: 'Sheila',
    lastname: 'Reynolds',
    email: 'sheila_reynolds@test.com',
    imageurl: 'images/profiles/Sheila Reynolds.jpg',
    birthdate: '01/08/2000',
    cpf: "050.640.540-09",
    password: '123',
  );

  User connie = User(
    id: 'f4bbe21a-0716-40f0-8459-eb25f03fcd7d',
    fistname: 'Connie',
    lastname: 'Romero',
    email: 'connie_romero@test.com',
    imageurl: 'images/profiles/Connie Romero.jpg',
    birthdate: '01/02/2000',
    cpf: "986.978.370-81",
    password: '123',
  );

  User eduardo = User(
    id: 'a679ad3e-3add-4a5b-8610-988a40c061f9',
    fistname: 'Eduardo',
    lastname: 'Burke',
    email: 'eduardo_burke@test.com',
    imageurl: 'images/profiles/Eduardo Burke.jpg',
    birthdate: '01/03/2000',
    cpf: "986.978.370-81",
    password: '123',
  );

  User georgia = User(
    id: '31262fce-0704-40d8-be76-13a3633296c4',
    fistname: 'Georgia',
    lastname: 'Diaz',
    email: 'georgia_diaz@test.com',
    imageurl: 'images/profiles/Georgia Diaz.jpg',
    birthdate: '01/04/2000',
    cpf: "682.522.080-29",
    password: '123',
  );

  User jar = User(
    id: 'daca657d-2437-426a-8fa8-1d5096946586',
    fistname: 'Jar',
    lastname: 'James',
    email: 'jar_james@test.com',
    imageurl: 'images/profiles/Jar James.jpg',
    birthdate: '01/05/2000',
    cpf: "447.516.510-56",
    password: '123',
  );

  User louise = User(
    id: 'c4228990-89d3-4dfd-a584-591b4fe47d63',
    fistname: 'louise',
    lastname: 'Aleatorius',
    email: 'louise@test.com',
    imageurl: 'images/profiles/louise.jpg',
    birthdate: '01/06/2000',
    cpf: "355.575.100-01",
    password: '123',
  );

  User regina = User(
    id: '40d460c8-1b7f-4271-be56-8994dfa5102d',
    fistname: 'Regina',
    lastname: 'Mills',
    email: 'regina_mills@test.com',
    imageurl: 'images/profiles/Regina Mills.jpg',
    birthdate: '01/07/2000',
    cpf: "375.236.560-99",
    password: '123',
  );

  User cory = User(
    id: 'bb58735f-9869-4755-9937-6210b16a93f8',
    fistname: 'Cory',
    lastname: 'Flores',
    email: 'cory_flores@test.com',
    imageurl: 'images/profiles/Cory Flores.jpg',
    birthdate: '30/12/2001',
    cpf: "448.791.490-63",
    password: '123',
  );

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      }, onCreate: (Migrator m) {
        //Add Users on Database creation
        usersDao.insertUser(sheila);

        usersDao.insertUser(connie);

        usersDao.insertUser(eduardo);

        usersDao.insertUser(georgia);

        usersDao.insertUser(jar);

        usersDao.insertUser(louise);

        usersDao.insertUser(regina);

        usersDao.insertUser(cory);

        print("Inserindo usuarios no banco de Dados: $sheila, $connie, $eduardo, $georgia and others");

        return m.createAll();
      });
}
