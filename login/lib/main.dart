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
      title: 'Registration',
      theme: ThemeData(
        primaryColor: Colors.green[800],
      ),
      home: const MyHomePage(title: 'Log in'),
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
  DatabaseHelper _dbhelper = DatabaseHelper.instance;

  final _formKey = GlobalKey<FormState>();
  final _ctrlName = TextEditingController();
  final _ctrlPass = TextEditingController();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _dbhelper = DatabaseHelper.instance;
    });
    _dbhelper.insertUserCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.green[800],
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
          child: Column(children: <Widget>[
            TextFormField(
              controller: _ctrlName,
              decoration: InputDecoration(labelText: 'User Name'),
              onSaved: (val) => setState(() => _user.name = val),
              validator: (val) =>
                  (val!.length == 0 ? 'This field is required' : null),
            ),
            TextFormField(
              controller: _ctrlPass,
              decoration: InputDecoration(labelText: 'Password'),
              onSaved: (val) => setState(() => _user.password = val),
              validator: (val) =>
                  (val!.length < 8 ? 'This field is required' : null),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () => _onSubmit(),
                child: Text('Submit'),
                color: Colors.green[800],
                textColor: Colors.white,
              ),
            ),
          ]),
        ),
      );

  _onSubmit() async {
    var form = _formKey.currentState;
    if (form != null && form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _doLogin(_user.name, _user.password);
      });

      print('success');
      _resetForm();
    }
  }

  _doLogin(String? username, String? pass) {
    _dbhelper
        .login(username, pass)
        .then((user) => onLoginSuccess(user))
        .catchError((onError) => onLoginError(onError));
  }

  @override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    _showSnackBar("Login not successful");
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(User user) async {
    // TODO: implement onLoginSuccess
    if (user.name == "") {
      _showSnackBar("Login not successful");
    } else {
      _showSnackBar(user.toString());
    }
    setState(() {
      _isLoading = false;
    });
    if (user.flaglogged == "logged") {
      print("Logged");
      Navigator.of(context).pushNamed("/home");
    } else {
      print("Not Logged");
    }
  }

  void _showSnackBar(String text) {
    scaffoldKey.currentState!.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  _resetForm() {
    setState(() {
      _formKey.currentState!.reset();
      _ctrlName.clear();
      _ctrlPass.clear();
      _user.id = null;
    });
  }
}
