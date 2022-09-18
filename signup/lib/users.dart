class User {
  static const tblUser = 'user';
  static const colId = 'id';
  static const colName = 'name';
  static const colPass = 'password';
  static const colMobile = 'mobile';

  User({this.id, this.name, this.mobile});

  User.fromMap(Map<dynamic, dynamic> map) {
    id = map[colId];
    name = map[colName];
    password = map[colPass];
    mobile = map[colMobile];
  }

  int? id;
  String? name;
  String? password;
  String? mobile;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      colName: name,
      colPass: password,
      colMobile: mobile
    };
    if (id != null) map[colId] = id;

    return map;
  }
}
