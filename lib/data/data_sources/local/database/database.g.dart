// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Message extends DataClass implements Insertable<Message> {
  final int id;
  final String time;
  final String senderId;
  final String groupOrUserId;
  final String messageText;
  final bool isLiked;
  final bool unRead;
  Message(
      {@required this.id,
      @required this.time,
      @required this.senderId,
      @required this.groupOrUserId,
      @required this.messageText,
      @required this.isLiked,
      @required this.unRead});
  factory Message.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Message(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      time: stringType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
      senderId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}sender_id']),
      groupOrUserId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}group_or_user_id']),
      messageText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}message_text']),
      isLiked:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_liked']),
      unRead:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}un_read']),
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
    if (!nullToAbsent || groupOrUserId != null) {
      map['group_or_user_id'] = Variable<String>(groupOrUserId);
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
      senderId: senderId == null && nullToAbsent
          ? const Value.absent()
          : Value(senderId),
      groupOrUserId: groupOrUserId == null && nullToAbsent
          ? const Value.absent()
          : Value(groupOrUserId),
      messageText: messageText == null && nullToAbsent
          ? const Value.absent()
          : Value(messageText),
      isLiked: isLiked == null && nullToAbsent
          ? const Value.absent()
          : Value(isLiked),
      unRead:
          unRead == null && nullToAbsent ? const Value.absent() : Value(unRead),
    );
  }

  factory Message.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Message(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<String>(json['time']),
      senderId: serializer.fromJson<String>(json['senderId']),
      groupOrUserId: serializer.fromJson<String>(json['groupOrUserId']),
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
      'groupOrUserId': serializer.toJson<String>(groupOrUserId),
      'messageText': serializer.toJson<String>(messageText),
      'isLiked': serializer.toJson<bool>(isLiked),
      'unRead': serializer.toJson<bool>(unRead),
    };
  }

  Message copyWith(
          {int id,
          String time,
          String senderId,
          String groupOrUserId,
          String messageText,
          bool isLiked,
          bool unRead}) =>
      Message(
        id: id ?? this.id,
        time: time ?? this.time,
        senderId: senderId ?? this.senderId,
        groupOrUserId: groupOrUserId ?? this.groupOrUserId,
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
          ..write('groupOrUserId: $groupOrUserId, ')
          ..write('messageText: $messageText, ')
          ..write('isLiked: $isLiked, ')
          ..write('unRead: $unRead')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          time.hashCode,
          $mrjc(
              senderId.hashCode,
              $mrjc(
                  groupOrUserId.hashCode,
                  $mrjc(messageText.hashCode,
                      $mrjc(isLiked.hashCode, unRead.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Message &&
          other.id == this.id &&
          other.time == this.time &&
          other.senderId == this.senderId &&
          other.groupOrUserId == this.groupOrUserId &&
          other.messageText == this.messageText &&
          other.isLiked == this.isLiked &&
          other.unRead == this.unRead);
}

class MessagesCompanion extends UpdateCompanion<Message> {
  final Value<int> id;
  final Value<String> time;
  final Value<String> senderId;
  final Value<String> groupOrUserId;
  final Value<String> messageText;
  final Value<bool> isLiked;
  final Value<bool> unRead;
  const MessagesCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.senderId = const Value.absent(),
    this.groupOrUserId = const Value.absent(),
    this.messageText = const Value.absent(),
    this.isLiked = const Value.absent(),
    this.unRead = const Value.absent(),
  });
  MessagesCompanion.insert({
    this.id = const Value.absent(),
    @required String time,
    @required String senderId,
    @required String groupOrUserId,
    @required String messageText,
    this.isLiked = const Value.absent(),
    this.unRead = const Value.absent(),
  })  : time = Value(time),
        senderId = Value(senderId),
        groupOrUserId = Value(groupOrUserId),
        messageText = Value(messageText);
  static Insertable<Message> custom({
    Expression<int> id,
    Expression<String> time,
    Expression<String> senderId,
    Expression<String> groupOrUserId,
    Expression<String> messageText,
    Expression<bool> isLiked,
    Expression<bool> unRead,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (senderId != null) 'sender_id': senderId,
      if (groupOrUserId != null) 'group_or_user_id': groupOrUserId,
      if (messageText != null) 'message_text': messageText,
      if (isLiked != null) 'is_liked': isLiked,
      if (unRead != null) 'un_read': unRead,
    });
  }

  MessagesCompanion copyWith(
      {Value<int> id,
      Value<String> time,
      Value<String> senderId,
      Value<String> groupOrUserId,
      Value<String> messageText,
      Value<bool> isLiked,
      Value<bool> unRead}) {
    return MessagesCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      senderId: senderId ?? this.senderId,
      groupOrUserId: groupOrUserId ?? this.groupOrUserId,
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
    if (groupOrUserId.present) {
      map['group_or_user_id'] = Variable<String>(groupOrUserId.value);
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
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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

  final VerificationMeta _groupOrUserIdMeta =
      const VerificationMeta('groupOrUserId');
  GeneratedTextColumn _groupOrUserId;
  @override
  GeneratedTextColumn get groupOrUserId =>
      _groupOrUserId ??= _constructGroupOrUserId();
  GeneratedTextColumn _constructGroupOrUserId() {
    return GeneratedTextColumn(
      'group_or_user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _messageTextMeta =
      const VerificationMeta('messageText');
  GeneratedTextColumn _messageText;
  @override
  GeneratedTextColumn get messageText =>
      _messageText ??= _constructMessageText();
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
    return GeneratedBoolColumn('is_liked', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _unReadMeta = const VerificationMeta('unRead');
  GeneratedBoolColumn _unRead;
  @override
  GeneratedBoolColumn get unRead => _unRead ??= _constructUnRead();
  GeneratedBoolColumn _constructUnRead() {
    return GeneratedBoolColumn('un_read', $tableName, false,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, time, senderId, groupOrUserId, messageText, isLiked, unRead];
  @override
  $MessagesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'messages';
  @override
  final String actualTableName = 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<Message> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('sender_id')) {
      context.handle(_senderIdMeta,
          senderId.isAcceptableOrUnknown(data['sender_id'], _senderIdMeta));
    } else if (isInserting) {
      context.missing(_senderIdMeta);
    }
    if (data.containsKey('group_or_user_id')) {
      context.handle(
          _groupOrUserIdMeta,
          groupOrUserId.isAcceptableOrUnknown(
              data['group_or_user_id'], _groupOrUserIdMeta));
    } else if (isInserting) {
      context.missing(_groupOrUserIdMeta);
    }
    if (data.containsKey('message_text')) {
      context.handle(
          _messageTextMeta,
          messageText.isAcceptableOrUnknown(
              data['message_text'], _messageTextMeta));
    } else if (isInserting) {
      context.missing(_messageTextMeta);
    }
    if (data.containsKey('is_liked')) {
      context.handle(_isLikedMeta,
          isLiked.isAcceptableOrUnknown(data['is_liked'], _isLikedMeta));
    }
    if (data.containsKey('un_read')) {
      context.handle(_unReadMeta,
          unRead.isAcceptableOrUnknown(data['un_read'], _unReadMeta));
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

class User extends DataClass implements Insertable<User> {
  final String id;
  final String fistName;
  final String lastName;
  final String email;
  final String password;
  final String imageUrl;
  final String birthDate;
  final String cpf;
  User(
      {@required this.id,
      @required this.fistName,
      @required this.lastName,
      @required this.email,
      @required this.password,
      @required this.imageUrl,
      @required this.birthDate,
      @required this.cpf});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      fistName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fist_name']),
      lastName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name']),
      email:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      imageUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
      birthDate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}birth_date']),
      cpf: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cpf']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || fistName != null) {
      map['fist_name'] = Variable<String>(fistName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
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
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<String>(birthDate);
    }
    if (!nullToAbsent || cpf != null) {
      map['cpf'] = Variable<String>(cpf);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      fistName: fistName == null && nullToAbsent
          ? const Value.absent()
          : Value(fistName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      cpf: cpf == null && nullToAbsent ? const Value.absent() : Value(cpf),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<String>(json['id']),
      fistName: serializer.fromJson<String>(json['fistName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      birthDate: serializer.fromJson<String>(json['birthDate']),
      cpf: serializer.fromJson<String>(json['cpf']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fistName': serializer.toJson<String>(fistName),
      'lastName': serializer.toJson<String>(lastName),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'birthDate': serializer.toJson<String>(birthDate),
      'cpf': serializer.toJson<String>(cpf),
    };
  }

  User copyWith(
          {String id,
          String fistName,
          String lastName,
          String email,
          String password,
          String imageUrl,
          String birthDate,
          String cpf}) =>
      User(
        id: id ?? this.id,
        fistName: fistName ?? this.fistName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        imageUrl: imageUrl ?? this.imageUrl,
        birthDate: birthDate ?? this.birthDate,
        cpf: cpf ?? this.cpf,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('fistName: $fistName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('birthDate: $birthDate, ')
          ..write('cpf: $cpf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          fistName.hashCode,
          $mrjc(
              lastName.hashCode,
              $mrjc(
                  email.hashCode,
                  $mrjc(
                      password.hashCode,
                      $mrjc(imageUrl.hashCode,
                          $mrjc(birthDate.hashCode, cpf.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.fistName == this.fistName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.password == this.password &&
          other.imageUrl == this.imageUrl &&
          other.birthDate == this.birthDate &&
          other.cpf == this.cpf);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> fistName;
  final Value<String> lastName;
  final Value<String> email;
  final Value<String> password;
  final Value<String> imageUrl;
  final Value<String> birthDate;
  final Value<String> cpf;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.fistName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.cpf = const Value.absent(),
  });
  UsersCompanion.insert({
    @required String id,
    @required String fistName,
    @required String lastName,
    @required String email,
    @required String password,
    @required String imageUrl,
    @required String birthDate,
    @required String cpf,
  })  : id = Value(id),
        fistName = Value(fistName),
        lastName = Value(lastName),
        email = Value(email),
        password = Value(password),
        imageUrl = Value(imageUrl),
        birthDate = Value(birthDate),
        cpf = Value(cpf);
  static Insertable<User> custom({
    Expression<String> id,
    Expression<String> fistName,
    Expression<String> lastName,
    Expression<String> email,
    Expression<String> password,
    Expression<String> imageUrl,
    Expression<String> birthDate,
    Expression<String> cpf,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fistName != null) 'fist_name': fistName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (imageUrl != null) 'image_url': imageUrl,
      if (birthDate != null) 'birth_date': birthDate,
      if (cpf != null) 'cpf': cpf,
    });
  }

  UsersCompanion copyWith(
      {Value<String> id,
      Value<String> fistName,
      Value<String> lastName,
      Value<String> email,
      Value<String> password,
      Value<String> imageUrl,
      Value<String> birthDate,
      Value<String> cpf}) {
    return UsersCompanion(
      id: id ?? this.id,
      fistName: fistName ?? this.fistName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      imageUrl: imageUrl ?? this.imageUrl,
      birthDate: birthDate ?? this.birthDate,
      cpf: cpf ?? this.cpf,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fistName.present) {
      map['fist_name'] = Variable<String>(fistName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
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
    if (birthDate.present) {
      map['birth_date'] = Variable<String>(birthDate.value);
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

  final VerificationMeta _fistNameMeta = const VerificationMeta('fistName');
  GeneratedTextColumn _fistName;
  @override
  GeneratedTextColumn get fistName => _fistName ??= _constructFistName();
  GeneratedTextColumn _constructFistName() {
    return GeneratedTextColumn(
      'fist_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  GeneratedTextColumn _lastName;
  @override
  GeneratedTextColumn get lastName => _lastName ??= _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn(
      'last_name',
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

  final VerificationMeta _birthDateMeta = const VerificationMeta('birthDate');
  GeneratedTextColumn _birthDate;
  @override
  GeneratedTextColumn get birthDate => _birthDate ??= _constructBirthDate();
  GeneratedTextColumn _constructBirthDate() {
    return GeneratedTextColumn(
      'birth_date',
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
  List<GeneratedColumn> get $columns =>
      [id, fistName, lastName, email, password, imageUrl, birthDate, cpf];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('fist_name')) {
      context.handle(_fistNameMeta,
          fistName.isAcceptableOrUnknown(data['fist_name'], _fistNameMeta));
    } else if (isInserting) {
      context.missing(_fistNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name'], _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url'], _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date'], _birthDateMeta));
    } else if (isInserting) {
      context.missing(_birthDateMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf'], _cpfMeta));
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

class ContactList extends DataClass implements Insertable<ContactList> {
  final String ownerId;
  final String contactId;
  ContactList({@required this.ownerId, @required this.contactId});
  factory ContactList.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ContactList(
      ownerId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}owner_id']),
      contactId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}contact_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || ownerId != null) {
      map['owner_id'] = Variable<String>(ownerId);
    }
    if (!nullToAbsent || contactId != null) {
      map['contact_id'] = Variable<String>(contactId);
    }
    return map;
  }

  ContactListsCompanion toCompanion(bool nullToAbsent) {
    return ContactListsCompanion(
      ownerId: ownerId == null && nullToAbsent
          ? const Value.absent()
          : Value(ownerId),
      contactId: contactId == null && nullToAbsent
          ? const Value.absent()
          : Value(contactId),
    );
  }

  factory ContactList.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ContactList(
      ownerId: serializer.fromJson<String>(json['ownerId']),
      contactId: serializer.fromJson<String>(json['contactId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'ownerId': serializer.toJson<String>(ownerId),
      'contactId': serializer.toJson<String>(contactId),
    };
  }

  ContactList copyWith({String ownerId, String contactId}) => ContactList(
        ownerId: ownerId ?? this.ownerId,
        contactId: contactId ?? this.contactId,
      );
  @override
  String toString() {
    return (StringBuffer('ContactList(')
          ..write('ownerId: $ownerId, ')
          ..write('contactId: $contactId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(ownerId.hashCode, contactId.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ContactList &&
          other.ownerId == this.ownerId &&
          other.contactId == this.contactId);
}

class ContactListsCompanion extends UpdateCompanion<ContactList> {
  final Value<String> ownerId;
  final Value<String> contactId;
  const ContactListsCompanion({
    this.ownerId = const Value.absent(),
    this.contactId = const Value.absent(),
  });
  ContactListsCompanion.insert({
    @required String ownerId,
    @required String contactId,
  })  : ownerId = Value(ownerId),
        contactId = Value(contactId);
  static Insertable<ContactList> custom({
    Expression<String> ownerId,
    Expression<String> contactId,
  }) {
    return RawValuesInsertable({
      if (ownerId != null) 'owner_id': ownerId,
      if (contactId != null) 'contact_id': contactId,
    });
  }

  ContactListsCompanion copyWith(
      {Value<String> ownerId, Value<String> contactId}) {
    return ContactListsCompanion(
      ownerId: ownerId ?? this.ownerId,
      contactId: contactId ?? this.contactId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (ownerId.present) {
      map['owner_id'] = Variable<String>(ownerId.value);
    }
    if (contactId.present) {
      map['contact_id'] = Variable<String>(contactId.value);
    }
    return map;
  }
}

class $ContactListsTable extends ContactLists
    with TableInfo<$ContactListsTable, ContactList> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContactListsTable(this._db, [this._alias]);
  final VerificationMeta _ownerIdMeta = const VerificationMeta('ownerId');
  GeneratedTextColumn _ownerId;
  @override
  GeneratedTextColumn get ownerId => _ownerId ??= _constructOwnerId();
  GeneratedTextColumn _constructOwnerId() {
    return GeneratedTextColumn('owner_id', $tableName, false,
        $customConstraints: 'REFERENCES users(id)');
  }

  final VerificationMeta _contactIdMeta = const VerificationMeta('contactId');
  GeneratedTextColumn _contactId;
  @override
  GeneratedTextColumn get contactId => _contactId ??= _constructContactId();
  GeneratedTextColumn _constructContactId() {
    return GeneratedTextColumn('contact_id', $tableName, false,
        $customConstraints: 'REFERENCES users(id)');
  }

  @override
  List<GeneratedColumn> get $columns => [ownerId, contactId];
  @override
  $ContactListsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'contact_lists';
  @override
  final String actualTableName = 'contact_lists';
  @override
  VerificationContext validateIntegrity(Insertable<ContactList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('owner_id')) {
      context.handle(_ownerIdMeta,
          ownerId.isAcceptableOrUnknown(data['owner_id'], _ownerIdMeta));
    } else if (isInserting) {
      context.missing(_ownerIdMeta);
    }
    if (data.containsKey('contact_id')) {
      context.handle(_contactIdMeta,
          contactId.isAcceptableOrUnknown(data['contact_id'], _contactIdMeta));
    } else if (isInserting) {
      context.missing(_contactIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ContactList map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ContactList.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ContactListsTable createAlias(String alias) {
    return $ContactListsTable(_db, alias);
  }
}

class Group extends DataClass implements Insertable<Group> {
  final int id;
  final String groupName;
  Group({@required this.id, @required this.groupName});
  factory Group.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Group(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      groupName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}group_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || groupName != null) {
      map['group_name'] = Variable<String>(groupName);
    }
    return map;
  }

  GroupsCompanion toCompanion(bool nullToAbsent) {
    return GroupsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      groupName: groupName == null && nullToAbsent
          ? const Value.absent()
          : Value(groupName),
    );
  }

  factory Group.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Group(
      id: serializer.fromJson<int>(json['id']),
      groupName: serializer.fromJson<String>(json['groupName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'groupName': serializer.toJson<String>(groupName),
    };
  }

  Group copyWith({int id, String groupName}) => Group(
        id: id ?? this.id,
        groupName: groupName ?? this.groupName,
      );
  @override
  String toString() {
    return (StringBuffer('Group(')
          ..write('id: $id, ')
          ..write('groupName: $groupName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, groupName.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Group &&
          other.id == this.id &&
          other.groupName == this.groupName);
}

class GroupsCompanion extends UpdateCompanion<Group> {
  final Value<int> id;
  final Value<String> groupName;
  const GroupsCompanion({
    this.id = const Value.absent(),
    this.groupName = const Value.absent(),
  });
  GroupsCompanion.insert({
    this.id = const Value.absent(),
    @required String groupName,
  }) : groupName = Value(groupName);
  static Insertable<Group> custom({
    Expression<int> id,
    Expression<String> groupName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (groupName != null) 'group_name': groupName,
    });
  }

  GroupsCompanion copyWith({Value<int> id, Value<String> groupName}) {
    return GroupsCompanion(
      id: id ?? this.id,
      groupName: groupName ?? this.groupName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (groupName.present) {
      map['group_name'] = Variable<String>(groupName.value);
    }
    return map;
  }
}

class $GroupsTable extends Groups with TableInfo<$GroupsTable, Group> {
  final GeneratedDatabase _db;
  final String _alias;
  $GroupsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _groupNameMeta = const VerificationMeta('groupName');
  GeneratedTextColumn _groupName;
  @override
  GeneratedTextColumn get groupName => _groupName ??= _constructGroupName();
  GeneratedTextColumn _constructGroupName() {
    return GeneratedTextColumn(
      'group_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, groupName];
  @override
  $GroupsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'groups';
  @override
  final String actualTableName = 'groups';
  @override
  VerificationContext validateIntegrity(Insertable<Group> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('group_name')) {
      context.handle(_groupNameMeta,
          groupName.isAcceptableOrUnknown(data['group_name'], _groupNameMeta));
    } else if (isInserting) {
      context.missing(_groupNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Group map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Group.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $GroupsTable createAlias(String alias) {
    return $GroupsTable(_db, alias);
  }
}

class UserGroup extends DataClass implements Insertable<UserGroup> {
  final String groupId;
  final String participantId;
  UserGroup({@required this.groupId, @required this.participantId});
  factory UserGroup.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserGroup(
      groupId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}group_id']),
      participantId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}participant_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || groupId != null) {
      map['group_id'] = Variable<String>(groupId);
    }
    if (!nullToAbsent || participantId != null) {
      map['participant_id'] = Variable<String>(participantId);
    }
    return map;
  }

  UserGroupsCompanion toCompanion(bool nullToAbsent) {
    return UserGroupsCompanion(
      groupId: groupId == null && nullToAbsent
          ? const Value.absent()
          : Value(groupId),
      participantId: participantId == null && nullToAbsent
          ? const Value.absent()
          : Value(participantId),
    );
  }

  factory UserGroup.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserGroup(
      groupId: serializer.fromJson<String>(json['groupId']),
      participantId: serializer.fromJson<String>(json['participantId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupId': serializer.toJson<String>(groupId),
      'participantId': serializer.toJson<String>(participantId),
    };
  }

  UserGroup copyWith({String groupId, String participantId}) => UserGroup(
        groupId: groupId ?? this.groupId,
        participantId: participantId ?? this.participantId,
      );
  @override
  String toString() {
    return (StringBuffer('UserGroup(')
          ..write('groupId: $groupId, ')
          ..write('participantId: $participantId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(groupId.hashCode, participantId.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is UserGroup &&
          other.groupId == this.groupId &&
          other.participantId == this.participantId);
}

class UserGroupsCompanion extends UpdateCompanion<UserGroup> {
  final Value<String> groupId;
  final Value<String> participantId;
  const UserGroupsCompanion({
    this.groupId = const Value.absent(),
    this.participantId = const Value.absent(),
  });
  UserGroupsCompanion.insert({
    @required String groupId,
    @required String participantId,
  })  : groupId = Value(groupId),
        participantId = Value(participantId);
  static Insertable<UserGroup> custom({
    Expression<String> groupId,
    Expression<String> participantId,
  }) {
    return RawValuesInsertable({
      if (groupId != null) 'group_id': groupId,
      if (participantId != null) 'participant_id': participantId,
    });
  }

  UserGroupsCompanion copyWith(
      {Value<String> groupId, Value<String> participantId}) {
    return UserGroupsCompanion(
      groupId: groupId ?? this.groupId,
      participantId: participantId ?? this.participantId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (groupId.present) {
      map['group_id'] = Variable<String>(groupId.value);
    }
    if (participantId.present) {
      map['participant_id'] = Variable<String>(participantId.value);
    }
    return map;
  }
}

class $UserGroupsTable extends UserGroups
    with TableInfo<$UserGroupsTable, UserGroup> {
  final GeneratedDatabase _db;
  final String _alias;
  $UserGroupsTable(this._db, [this._alias]);
  final VerificationMeta _groupIdMeta = const VerificationMeta('groupId');
  GeneratedTextColumn _groupId;
  @override
  GeneratedTextColumn get groupId => _groupId ??= _constructGroupId();
  GeneratedTextColumn _constructGroupId() {
    return GeneratedTextColumn(
      'group_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _participantIdMeta =
      const VerificationMeta('participantId');
  GeneratedTextColumn _participantId;
  @override
  GeneratedTextColumn get participantId =>
      _participantId ??= _constructParticipantId();
  GeneratedTextColumn _constructParticipantId() {
    return GeneratedTextColumn('participant_id', $tableName, false,
        $customConstraints: 'REFERENCES users(id)');
  }

  @override
  List<GeneratedColumn> get $columns => [groupId, participantId];
  @override
  $UserGroupsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_groups';
  @override
  final String actualTableName = 'user_groups';
  @override
  VerificationContext validateIntegrity(Insertable<UserGroup> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id'], _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('participant_id')) {
      context.handle(
          _participantIdMeta,
          participantId.isAcceptableOrUnknown(
              data['participant_id'], _participantIdMeta));
    } else if (isInserting) {
      context.missing(_participantIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {groupId, participantId};
  @override
  UserGroup map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserGroup.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserGroupsTable createAlias(String alias) {
    return $UserGroupsTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MessagesTable _messages;
  $MessagesTable get messages => _messages ??= $MessagesTable(this);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $ContactListsTable _contactLists;
  $ContactListsTable get contactLists =>
      _contactLists ??= $ContactListsTable(this);
  $GroupsTable _groups;
  $GroupsTable get groups => _groups ??= $GroupsTable(this);
  $UserGroupsTable _userGroups;
  $UserGroupsTable get userGroups => _userGroups ??= $UserGroupsTable(this);
  MessagesDao _messagesDao;
  MessagesDao get messagesDao =>
      _messagesDao ??= MessagesDao(this as MyDatabase);
  UsersDao _usersDao;
  UsersDao get usersDao => _usersDao ??= UsersDao(this as MyDatabase);
  ContactListDao _contactListDao;
  ContactListDao get contactListDao =>
      _contactListDao ??= ContactListDao(this as MyDatabase);
  GroupDao _groupDao;
  GroupDao get groupDao => _groupDao ??= GroupDao(this as MyDatabase);
  UserGroupsDao _userGroupsDao;
  UserGroupsDao get userGroupsDao =>
      _userGroupsDao ??= UserGroupsDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [messages, users, contactLists, groups, userGroups];
}
