class User {
  // User(this._id,this._name);//This is short-form constructor

  /*User({this._id =0 ,this._name = "anonymous"});
  */ //This gives error
  /* User({int id=0,String name="anonymous"}):_id = id,
  _name = name{
    print("Inside the constructor ");
  } */
  //assert is used for debugging only
  /*
  const User({int id = 0,String name = 'anonymous'}):assert(id >= 0),_id=id,_name=name;
  final int _id;
  final String _name;
  factory User.fromJson(Map<String,Object> json){
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id:userId,name:userName);
  }
  int get id => _id;
  String get name => name;
  // User(int _id,String _name)
  // {
  //   this._id = _id;
  //   this._name = _name;
  // }
  /*
  User.anonymous()
  {
    _id=0;
    _name ='anonymous';
  }
  */
  const User.anonymous():this();//This will works same as above but it redirects/forwards the control to the main constructor and User is replaced with this
  String toJson()
  {
    return '{"_id":$_id,"_name":"$_name"}';
  }
  // this annotation is used to tell compiler that this method is present in Object class so if by mistake we have changed the signature than compiler will give warning. 
  @override
  String toString()
  {
    return "User(_id: $_id, _name: $_name)";
  }//This is one kind of serialization only.
  */
  const User({this.id = 0, this.name = 'anonymou s'}) : assert(id >= 0);
  const User.anonymous() : this();
  final String name;
  final int id;
  String toJson() {
    return '{"id":$id,"name":"$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}







