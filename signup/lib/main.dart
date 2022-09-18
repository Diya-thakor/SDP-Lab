import 'package:flutter/material.dart';

import 'database_helper.dart';
import 'users.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Application',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: const MyHomePage(title: 'Registration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User _user = User();
  List<User> _users = [];
  DatabaseHelper _dbhelper = DatabaseHelper.instance;

  final _formKey = GlobalKey<FormState>();
  final _ctrlName = TextEditingController();
  final _ctrlPass = TextEditingController();
  final _ctrlMobile = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _dbhelper = DatabaseHelper.instance;
    });
    // _refreshUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_form()],
        ),
      ),
    );
  }

  _form() => Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _ctrlName,
                  decoration: InputDecoration(labelText: 'Full Name'),

                  onSaved: (val) => setState(() => _user.name = val),
                  validator: (val) =>
                      (val!.length == 0 ? 'This field is required' : null),
                ),
                TextFormField(
                  controller: _ctrlPass,
                  decoration: InputDecoration(labelText: 'Password'),
                  onSaved: (val) => setState(() => _user.password = val),
                  validator: (val) =>
                      (val!.length < 8 ? 'Atleast 8 characters required.' : null),
                ),
                TextFormField(
                  controller: _ctrlMobile,
                  // keyboardType: TextInputType.phone,
                  decoration: InputDecoration(labelText: 'Mobile'),
                  onSaved: (val) => setState(() => _user.mobile = val),
                  validator: (val) =>
                      (val!.length < 10 ? '10 characters are required.' : null),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    onPressed: () => _onSubmit(),
                    child: Text('Submit'),
                    color: Colors.blue[900],
                    textColor: Colors.white,
                  ),
                ),
            ]),
        ),
      );

  // _refreshUserList() async {
  //   List<User> x = await _dbhelper.fetchUsers();
  //   setState(() {
  //     _users = x;
  //   });
  // }

  _onSubmit() async {
    var form = _formKey.currentState;
    if (form != null && form.validate()) {
      form.save();

      if (_user.id == null)
        await _dbhelper.insertUser(_user);
      else
        await _dbhelper.updateUser(_user);
      // _refreshUserList();
      _resetForm();
    }
  }

  _resetForm() {
    setState(() {
      _formKey.currentState!.reset();
      _ctrlName.clear();
      _ctrlPass.clear();
      _ctrlMobile.clear();
      _user.id = null;
    });
  }

  // _list() => Expanded(
  //       child: Card(
  //         margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
  //         child: ListView.builder(
  //           padding: EdgeInsets.all(8),
  //           itemBuilder: (context, index) {
  //             return Column(
  //               children: <Widget>[
  //                 ListTile(
  //                     leading: Icon(Icons.account_circle,
  //                         color: Colors.blue[900], size: 40.0),
  //                     title: Text(
  //                       _users[index].name!.toUpperCase(),
  //                       style: TextStyle(
  //                         color: Colors.blue[900],
  //                         fontWeight: FontWeight.bold,
  //                       ),
  //                     ),
  //                     subtitle: Text(_users[index].mobile!),
  //                     trailing: IconButton(
  //                       icon: Icon(Icons.delete_sweep),
  //                       color: Colors.orange[800],
  //                       onPressed: () async {
  //                         await _dbhelper.deleteUser(_users[index].id!);
  //                         _resetForm();
  //                         _refreshUserList();
  //                       },
  //                     ),
  //                     onTap: () {
  //                       setState(() {
  //                         _user = _users[index];
  //                         _ctrlName.text = _users[index].name!;
  //                         _ctrlPass.text = _users[index].password!;
  //                         _ctrlMobile.text = _users[index].mobile!;
  //                       });
  //                     }),
  //                 Divider(
  //                   height: 5.0,
  //                 ),
  //               ],
  //             );
  //           },
  //           itemCount: _users.length,
  //         ),
  //       ),
  //     );
}
