// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final String id;
  final String name;
  final String email;
  final String password;
  final String imageUrl;
  final String bithDate;
  final String cpf;
  User(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.password,
      @required this.imageUrl,
      @required this.bithDate,
      @required this.cpf});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db, {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      email: stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      password: stringType.mapFromDatabaseResponse(data['${effectivePrefix}password']),
      imageUrl: stringType.mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
      bithDate: stringType.mapFromDatabaseResponse(data['${effectivePrefix}bith_date']),
      cpf: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cpf']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || bithDate != null) {
      map['bith_date'] = Variable<String>(bithDate);
    }
    if (!nullToAbsent || cpf != null) {
      map['cpf'] = Variable<String>(cpf);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      email: email == null && nullToAbsent ? const Value.absent() : Value(email),
      password: password == null && nullToAbsent ? const Value.absent() : Value(password),
      imageUrl: imageUrl == null && nullToAbsent ? const Value.absent() : Value(imageUrl),
      bithDate: bithDate == null && nullToAbsent ? const Value.absent() : Value(bithDate),
      cpf: cpf == null && nullToAbsent ? const Value.absent() : Value(cpf),
    );
  }

  factory User.fromJson(Map<String, dynamic> json, {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      bithDate: serializer.fromJson<String>(json['bithDate']),
      cpf: serializer.fromJson<String>(json['cpf']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'bithDate': serializer.toJson<String>(bithDate),
      'cpf': serializer.toJson<String>(cpf),
    };
  }

  User copyWith(
          {String id, String name, String email, String password, String imageUrl, String bithDate, String cpf}) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        imageUrl: imageUrl ?? this.imageUrl,
        bithDate: bithDate ?? this.bithDate,
        cpf: cpf ?? this.cpf,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('bithDate: $bithDate, ')
          ..write('cpf: $cpf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(email.hashCode,
              $mrjc(password.hashCode, $mrjc(imageUrl.hashCode, $mrjc(bithDate.hashCode, cpf.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.name == this.name &&
          other.email == this.email &&
          other.password == this.password &&
          other.imageUrl == this.imageUrl &&
          other.bithDate == this.bithDate &&
          other.cpf == this.cpf);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> email;
  final Value<String> password;
  final Value<String> imageUrl;
  final Value<String> bithDate;
  final Value<String> cpf;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.bithDate = const Value.absent(),
    this.cpf = const Value.absent(),
  });
  UsersCompanion.insert({
    @required String id,
    @required String name,
    @required String email,
    @required String password,
    @required String imageUrl,
    @required String bithDate,
    @required String cpf,
  })  : id = Value(id),
        name = Value(name),
        email = Value(email),
        password = Value(password),
        imageUrl = Value(imageUrl),
        bithDate = Value(bithDate),
        cpf = Value(cpf);
  static Insertable<User> custom({
    Expression<String> id,
    Expression<String> name,
    Expression<String> email,
    Expression<String> password,
    Expression<String> imageUrl,
    Expression<String> bithDate,
    Expression<String> cpf,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (imageUrl != null) 'image_url': imageUrl,
      if (bithDate != null) 'bith_date': bithDate,
      if (cpf != null) 'cpf': cpf,
    });
  }

  UsersCompanion copyWith(
      {Value<String> id,
      Value<String> name,
      Value<String> email,
      Value<String> password,
      Value<String> imageUrl,
      Value<String> bithDate,
      Value<String> cpf}) {
    return UsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      imageUrl: imageUrl ?? this.imageUrl,
      bithDate: bithDate ?? this.bithDate,
      cpf: cpf ?? this.cpf,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (bithDate.present) {
      map['bith_date'] = Variable<String>(bithDate.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    return map;
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn(
      'email',
      $tableName,
      false,
    );
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn(
      'password',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  GeneratedTextColumn _imageUrl;
  @override
  GeneratedTextColumn get imageUrl => _imageUrl ??= _constructImageUrl();
  GeneratedTextColumn _constructImageUrl() {
    return GeneratedTextColumn(
      'image_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _bithDateMeta = const VerificationMeta('bithDate');
  GeneratedTextColumn _bithDate;
  @override
  GeneratedTextColumn get bithDate => _bithDate ??= _constructBithDate();
  GeneratedTextColumn _constructBithDate() {
    return GeneratedTextColumn(
      'bith_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  GeneratedTextColumn _cpf;
  @override
  GeneratedTextColumn get cpf => _cpf ??= _constructCpf();
  GeneratedTextColumn _constructCpf() {
    return GeneratedTextColumn(
      'cpf',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, email, password, imageUrl, bithDate, cpf];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(_nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(_emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta, password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta, imageUrl.isAcceptableOrUnknown(data['image_url'], _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('bith_date')) {
      context.handle(_bithDateMeta, bithDate.isAcceptableOrUnknown(data['bith_date'], _bithDateMeta));
    } else if (isInserting) {
      context.missing(_bithDateMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(_cpfMeta, cpf.isAcceptableOrUnknown(data['cpf'], _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class Message extends DataClass implements Insertable<Message> {
  final int id;
  final String time;
  final String senderId;
  final String messageText;
  final bool isLiked;
  final bool unRead;
  Message(
      {@required this.id,
      @required this.time,
      @required this.senderId,
      @required this.messageText,
      @required this.isLiked,
      @required this.unRead});
  factory Message.fromData(Map<String, dynamic> data, GeneratedDatabase db, {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Message(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      time: stringType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
      senderId: stringType.mapFromDatabaseResponse(data['${effectivePrefix}sender_id']),
      messageText: stringType.mapFromDatabaseResponse(data['${effectivePrefix}message_text']),
      isLiked: boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_liked']),
      unRead: boolType.mapFromDatabaseResponse(data['${effectivePrefix}un_read']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<String>(time);
    }
    if (!nullToAbsent || senderId != null) {
      map['sender_id'] = Variable<String>(senderId);
    }
    if (!nullToAbsent || messageText != null) {
      map['message_text'] = Variable<String>(messageText);
    }
    if (!nullToAbsent || isLiked != null) {
      map['is_liked'] = Variable<bool>(isLiked);
    }
    if (!nullToAbsent || unRead != null) {
      map['un_read'] = Variable<bool>(unRead);
    }
    return map;
  }

  MessagesCompanion toCompanion(bool nullToAbsent) {
    return MessagesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      senderId: senderId == null && nullToAbsent ? const Value.absent() : Value(senderId),
      messageText: messageText == null && nullToAbsent ? const Value.absent() : Value(messageText),
      isLiked: isLiked == null && nullToAbsent ? const Value.absent() : Value(isLiked),
      unRead: unRead == null && nullToAbsent ? const Value.absent() : Value(unRead),
    );
  }

  factory Message.fromJson(Map<String, dynamic> json, {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Message(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<String>(json['time']),
      senderId: serializer.fromJson<String>(json['senderId']),
      messageText: serializer.fromJson<String>(json['messageText']),
      isLiked: serializer.fromJson<bool>(json['isLiked']),
      unRead: serializer.fromJson<bool>(json['unRead']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<String>(time),
      'senderId': serializer.toJson<String>(senderId),
      'messageText': serializer.toJson<String>(messageText),
      'isLiked': serializer.toJson<bool>(isLiked),
      'unRead': serializer.toJson<bool>(unRead),
    };
  }

  Message copyWith({int id, String time, String senderId, String messageText, bool isLiked, bool unRead}) => Message(
        id: id ?? this.id,
        time: time ?? this.time,
        senderId: senderId ?? this.senderId,
        messageText: messageText ?? this.messageText,
        isLiked: isLiked ?? this.isLiked,
        unRead: unRead ?? this.unRead,
      );
  @override
  String toString() {
    return (StringBuffer('Message(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('senderId: $senderId, ')
          ..write('messageText: $messageText, ')
          ..write('isLiked: $isLiked, ')
          ..write('unRead: $unRead')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(time.hashCode,
          $mrjc(senderId.hashCode, $mrjc(messageText.hashCode, $mrjc(isLiked.hashCode, unRead.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Message &&
          other.id == this.id &&
          other.time == this.time &&
          other.senderId == this.senderId &&
          other.messageText == this.messageText &&
          other.isLiked == this.isLiked &&
          other.unRead == this.unRead);
}

class MessagesCompanion extends UpdateCompanion<Message> {
  final Value<int> id;
  final Value<String> time;
  final Value<String> senderId;
  final Value<String> messageText;
  final Value<bool> isLiked;
  final Value<bool> unRead;
  const MessagesCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.senderId = const Value.absent(),
    this.messageText = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.unRead = const Value.absent(),
  });
  MessagesCompanion.insert({
    this.id = const Value.absent(),
    @required String time,
    @required String senderId,
    @required String messageText,
    this.isLiked = const Value.absent(),
    this.unRead = const Value.absent(),
  })  : time = Value(time),
        senderId = Value(senderId),
        messageText = Value(messageText);
  static Insertable<Message> custom({
    Expression<int> id,
    Expression<String> time,
    Expression<String> senderId,
    Expression<String> messageText,
    Expression<bool> isLiked,
    Expression<bool> unRead,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (senderId != null) 'sender_id': senderId,
      if (messageText != null) 'message_text': messageText,
      if (isLiked != null) 'is_liked': isLiked,
      if (unRead != null) 'un_read': unRead,
    });
  }

  MessagesCompanion copyWith(
      {Value<int> id,
      Value<String> time,
      Value<String> senderId,
      Value<String> messageText,
      Value<bool> isLiked,
      Value<bool> unRead}) {
    return MessagesCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      senderId: senderId ?? this.senderId,
      messageText: messageText ?? this.messageText,
      isLiked: isLiked ?? this.isLiked,
      unRead: unRead ?? this.unRead,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (senderId.present) {
      map['sender_id'] = Variable<String>(senderId.value);
    }
    if (messageText.present) {
      map['message_text'] = Variable<String>(messageText.value);
    }
    if (isLiked.present) {
      map['is_liked'] = Variable<bool>(isLiked.value);
    }
    if (unRead.present) {
      map['un_read'] = Variable<bool>(unRead.value);
    }
    return map;
  }
}

class $MessagesTable extends Messages with TableInfo<$MessagesTable, Message> {
  final GeneratedDatabase _db;
  final String _alias;
  $MessagesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false, hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedTextColumn _time;
  @override
  GeneratedTextColumn get time => _time ??= _constructTime();
  GeneratedTextColumn _constructTime() {
    return GeneratedTextColumn(
      'time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _senderIdMeta = const VerificationMeta('senderId');
  GeneratedTextColumn _senderId;
  @override
  GeneratedTextColumn get senderId => _senderId ??= _constructSenderId();
  GeneratedTextColumn _constructSenderId() {
    return GeneratedTextColumn(
      'sender_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _messageTextMeta = const VerificationMeta('messageText');
  GeneratedTextColumn _messageText;
  @override
  GeneratedTextColumn get messageText => _messageText ??= _constructMessageText();
  GeneratedTextColumn _constructMessageText() {
    return GeneratedTextColumn(
      'message_text',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isLikedMeta = const VerificationMeta('isLiked');
  GeneratedBoolColumn _isLiked;
  @override
  GeneratedBoolColumn get isLiked => _isLiked ??= _constructIsLiked();
  GeneratedBoolColumn _constructIsLiked() {
    return GeneratedBoolColumn('is_liked', $tableName, false, defaultValue: const Constant(false));
  }

  final VerificationMeta _unReadMeta = const VerificationMeta('unRead');
  GeneratedBoolColumn _unRead;
  @override
  GeneratedBoolColumn get unRead => _unRead ??= _constructUnRead();
  GeneratedBoolColumn _constructUnRead() {
    return GeneratedBoolColumn('un_read', $tableName, false, defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [id, time, senderId, messageText, isLiked, unRead];
  @override
  $MessagesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'messages';
  @override
  final String actualTableName = 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<Message> instance, {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(_timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('sender_id')) {
      context.handle(_senderIdMeta, senderId.isAcceptableOrUnknown(data['sender_id'], _senderIdMeta));
    } else if (isInserting) {
      context.missing(_senderIdMeta);
    }
    if (data.containsKey('message_text')) {
      context.handle(_messageTextMeta, messageText.isAcceptableOrUnknown(data['message_text'], _messageTextMeta));
    } else if (isInserting) {
      context.missing(_messageTextMeta);
    }
    if (data.containsKey('is_liked')) {
      context.handle(_isLikedMeta, isLiked.isAcceptableOrUnknown(data['is_liked'], _isLikedMeta));
    }
    if (data.containsKey('un_read')) {
      context.handle(_unReadMeta, unRead.isAcceptableOrUnknown(data['un_read'], _unReadMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Message map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Message.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MessagesTable createAlias(String alias) {
    return $MessagesTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $MessagesTable _messages;
  $MessagesTable get messages => _messages ??= $MessagesTable(this);
  UsersDao _usersDao;
  UsersDao get usersDao => _usersDao ??= UsersDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, messages];
}
