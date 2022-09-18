import 'package:login/database_helper.dart';

class User {
  static const tblUser = 'user';
  static const colId = 'id';
  static const colName = 'name';
  static const colPass = 'password';
  static const colFlag = 'flagLogged';

  User({this.id, this.name, this.password, this.flaglogged});

  User.fromMap(Map<dynamic, dynamic> map) {
    id = map[colId];
    name = map[colName];
    password = map[colPass];
    flaglogged = map[colFlag];
  }

  int? id;
  String? name;
  String? password;
  String? flaglogged;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      colName: name,
      colPass: password,
      colFlag: flaglogged
    };
    if (id != null) map[colId] = id;

    return map;
  }
}
