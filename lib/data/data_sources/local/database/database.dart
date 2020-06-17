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
  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration => MigrationStrategy(beforeOpen: (details) async {
        await customStatement('PRAGMA foreign_keys = ON');
      }, onCreate: (Migrator m) {
        //Add Users on Database creation
        usersDao.insertUser(User(
          id: 'f1767560-53e4-4d4e-9ec8-fb9df53ae574',
          fistName: 'Cory',
          lastName: 'Flores',
          email: 'cory_flores@test.com',
          imageUrl: 'images/profiles/Cory Flores.jpg',
          birthDate: '01/01/2000',
          cpf: "964.112.940-62",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: 'f4bbe21a-0716-40f0-8459-eb25f03fcd7d',
          fistName: 'Connie',
          lastName: 'Romero',
          email: 'connie_romero@test.com',
          imageUrl: 'images/profiles/Connie Romero.jpg',
          birthDate: '01/02/2000',
          cpf: "986.978.370-81",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: 'a679ad3e-3add-4a5b-8610-988a40c061f9',
          fistName: 'Eduardo',
          lastName: 'Burke',
          email: 'eduardo_burke@test.com',
          imageUrl: 'images/profiles/Eduardo Burke.jpg',
          birthDate: '01/03/2000',
          cpf: "986.978.370-81",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: '31262fce-0704-40d8-be76-13a3633296c4',
          fistName: 'Georgia',
          lastName: 'Diaz',
          email: 'georgia_diaz@test.com',
          imageUrl: 'images/profiles/Georgia Diaz.jpg',
          birthDate: '01/04/2000',
          cpf: "682.522.080-29",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: 'daca657d-2437-426a-8fa8-1d5096946586',
          fistName: 'Jar',
          lastName: 'James',
          email: 'jar_james@test.com',
          imageUrl: 'images/profiles/Jar James.jpg',
          birthDate: '01/05/2000',
          cpf: "447.516.510-56",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: 'c4228990-89d3-4dfd-a584-591b4fe47d63',
          fistName: 'louise',
          lastName: 'Aleatorius',
          email: 'louise@test.com',
          imageUrl: 'images/profiles/louise.jpg',
          birthDate: '01/06/2000',
          cpf: "355.575.100-01",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: '40d460c8-1b7f-4271-be56-8994dfa5102d',
          fistName: 'Regina',
          lastName: 'Mills',
          email: 'regina_mills@test.com',
          imageUrl: 'images/profiles/Regina Mills.jpg',
          birthDate: '01/07/2000',
          cpf: "375.236.560-99",
          password: '123',
        ));

        usersDao.insertUser(User(
          id: 'bb58735f-9869-4755-9937-6210b16a93f8',
          fistName: 'Sheila',
          lastName: 'Reynolds',
          email: 'sheila_reynolds@test.com',
          imageUrl: 'images/profiles/Sheila Reynolds.jpg',
          birthDate: '01/08/2000',
          cpf: "050.640.540-09",
          password: '123',
        ));

        return m.createAll();
      });
}
