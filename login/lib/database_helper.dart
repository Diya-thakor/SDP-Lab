import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'users.dart';

class DatabaseHelper {
  static const _databaseName = 'UserData.db';
  static const _databaseVersion = 1;

  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  Database? _database;

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);

    return await openDatabase(dbPath,
        version: _databaseVersion, onCreate: _onCreateDB);
  }

  _onCreateDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE ${User.tblUser}(
        ${User.colId} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${User.colName} TEXT NOT NULL,
        ${User.colPass} TEXT NOT NULL,
        ${User.colFlag} TEXT NOT NULL)
      ''');
  }

  Future<int?> insertUser(User user) async {
    Database? db = await database;
    return await db?.insert(User.tblUser, user.toMap());
  }

  void insertUserCall() async {
    Database? db = await database;

    User user1 = new User(name: 'Diya', password: '12345678', flaglogged: '');
    User user2 = new User(name: 'Riya', password: '12345678', flaglogged: '');
    User user3 = new User(name: 'Tiya', password: '12345678', flaglogged: '');

    insertUser(user1);
    insertUser(user2);
    insertUser(user3);
  }

  Future<User> selectUser(User user) async {
    print("Select User");
    print(user.name);
    print(user.password);
    var dbClient = await database;
    List<Map> maps = await dbClient!.query(User.tblUser,
        columns: [User.colName, User.colPass],
        where: "${User.colName} = ? and ${User.colPass} = ?",
        whereArgs: [user.name, user.password]);

    if (maps.length > 0) {
      print("User Exist !!!");
      return user;
    } else {
      print("User not Exist !!!");
      return new User();
    }
  }

  Future<User> login(String? username, String? password) async {
    String flagLogged = "logged";
    var user = new User();
    user.name = username;
    user.password = password;
    var userRetorno = new User();
    userRetorno = await selectUser(user);

    if (userRetorno != null) {
      flagLogged = "logged";
      var user = new User();
      user.name = username;
      user.password = password;
      user.flaglogged = flagLogged;
      return user;
    } else {
      flagLogged = "not";
      var user = new User();
      user.name = username;
      user.password = password;
      user.flaglogged = flagLogged;
      return user;
    }
  }
}
