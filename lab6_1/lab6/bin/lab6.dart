import 'dart:convert';
// import 'dart:html';
import 'dart:io';
import 'dart:isolate';
import 'package:http/http.dart' as http;
import 'package:lab6/lab6.dart' as lab6;

class Commment {
  Commment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});
  factory Commment.fromJSON(Map<String, Object?> jsonMap) {
    return Commment(
        postId: jsonMap['postId'] as int,
        id: jsonMap['id'] as int,
        name: jsonMap['name'] as String,
        email: jsonMap['email'] as String,
        body: jsonMap['body'] as String);
  }
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;
  @override
  String toString() {
    return '$postId,$id,$name,$email,$body';
  }
}

void fibonacci(Map<String, Object> arguments) {
  final sendPort = arguments['sendPort'] as SendPort;
  final n = arguments['n'] as int;
  var current = 1;
  var previous = 1;
  var done = 2;
  while (done < n) {
    final next = current + previous;
    previous = current;
    current = next;
    done += 1;
  }
  sendPort.send(current);
}

Future<void> main(List<String> arguments) async {
  // print('Hello world: ${lab6.calculate()}!');

  // Mini-exercises:1:
  // Exercise:1
  Future<void>.delayed(
      Duration(seconds: 2), () => print("I am from the future"));

  // Exercise:2

  print("Beore the future.");
  final message = await Future<String>.delayed(
      Duration(seconds: 2), () => "I am from future.");
  print(message);
  print("After the future");

  // Exercise:3

  print("Beore the future.");
  try {
    final message = await Future<String>.delayed(
        Duration(seconds: 2), () => "I am from future.");
    print(message);
    print("After the future");
  } catch (Exception) {
    print(Exception);
  }

  // Mini-exercises:2
  // Exercise:1,2
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);
  await for (var number in myStream) {
    print(number);
  }
  /*
  // Challenges:
  // Challange:1
  print("1 synchronous");
  Future(() => print("2 event queue")).then((value) => print("3 synchronus"));
  Future.microtask(() => print("4 microtask queue"));
  Future.microtask(() => print("5 microtask queue"));
  Future.delayed(Duration(seconds: 1), () => print("6 event queue"));
  Future(() => print("7 event queue"))
      .then((value) => Future(() => print("8 event queue")));
  Future(() => print("9 event queue"))
      .then((value) => Future.microtask(() => print("10 microtask queue")));
  print("11 synchronus");
  // Challenge:2
  final url = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  final commentList = <Commment>[];
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJSONString = response.body;
      final jsonList = jsonDecode(rawJSONString);
      for (var element in jsonList) {
        final comment = Commment.fromJSON(element);
        commentList.add(comment);
        //(element);
      }
    } else {
      throw HttpException("$statusCode");
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
  print('Comment list length:${commentList.length}');

  // Challenge: 3
  final url1 = Uri.parse('https://raywenderlich.com');
  final client = http.Client();
  try {
    final request = http.Request('GET', url1);
    final response = await client.send(request);
    final stream = response.stream;
    await for (var data in stream.transform(utf8.decoder)) {
      print(data.length);
    }
  } on Exception catch (err) {
    print(err);
  } finally {
    client.close();
  }

  final receivePort = ReceivePort();
  final n = 10;
  final arguments = {
    'sendPort': receivePort.sendPort,
    'n': n,
  };
  final isolate = await Isolate.spawn(
    fibonacci,
    arguments,
  );
  receivePort.listen((message) {
    print('Fibonacci number $n in $message:');
    receivePort.close();
    isolate.kill();
  });
  */
}
