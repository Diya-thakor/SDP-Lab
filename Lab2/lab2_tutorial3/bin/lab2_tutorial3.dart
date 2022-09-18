import 'dart:ffi';
import 'dart:math';

import 'package:lab2_tutorial3/lab2_tutorial3.dart' as lab2_tutorial3;

void main(List<String> arguments) {
  // print('Hello world: ${lab2_tutorial3.calculate()}!');
  /*
  // datatype in Dart
  // int,double,num,dynamic,string
  
  // If we want to make variable immutable, but still keep the type annotation, we can add const or final in front.
  const int myInteger = 10;
  const double myDouble = 3.14;
  // OR
  final int myInteger1 = 10;
  final double myDouble1 = 3.14;
  print('$myInteger,$myInteger1,$myDouble,$myDouble1');

  // Dart has type inference means in above code if we don't have written the type then compiler will automatically  decide the type based on the value we assign.
  const str = "hello"; 
  print(str);
  num n1 = 3.12;
  print(n1 is int);
  print(n1 is double);
  n1 = 3;
  print(n1.runtimeType);
  */

  /*
  // Type conversion
  // Implicit conversion
  int n1 = 3;
  // This gives error becuase implicit type conversion is not allowed in dart.
  // double n2 = n1;
  double n2 = n1.toDouble();
  print(n2);

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  // type of totalCost will be double because int could loss precision as hourlyRate is of type double
  const totalCost = hourlyRate * hoursWorked;
  print(totalCost);
  // const totalCost = (hourlyRate * hoursWorked).toInt(); --> This will give an error because const must be initialized with a constant value and toInt is compile time.
  //This will work if we use final.
  */

  /*
  //Casting Down
  //To do down casting we can use 'as' keyword 
  num n1 = 3;
  //Here num can be int or double so we can't use iseven with it,here we can use type casting
  // You need to be careful with type casting, though. If you cast to the wrong type, you’ll get a runtime error:
  print((n1 as int).isEven);// If n1 = 3.14 then thos will give error
  print((n1.toInt()).isEven);//This will work for n1 = 3.14 as well
  print(n1.runtimeType);
  // _CastError (type 'int' is not a subtype of type 'double' in type cast)
  // num someNumber = 3;
  // final someDouble = someNumber as double;
  */

  /*
  // Exercise 1: 
  const age1 = 42;
  const age2 = 21;
  // This both will be of int type

  // Exercise 2:
  const averageAge = (age1 + age2)/2;
  // averageAge is double because it's result is in double not int
  */

  /*
  // Since we used the var keyword, we are allowed to reassign the value of greeting as long as the new value is still a string.
  var greeting = 'Hello, Dart!';
  print (greeting);
  greeting = 'Hello, Flutter!';
  print (greeting);
  // It’s not like you replaced Dart in the first string with Flutter. No, you completely discarded the string 'Hello, Dart!'and replaced it with a whole new string whose value was 'Hello, Flutter!'.
  const letter = 'a';//This is string not character
  // For string literal we can either use single quotes or double quotes.
  */

  /*
  // Concatenation
  var message = 'Hello' + ' my name is ';
  // Here even if we romove + it works
  var m1 = 'Hello' ' my name is ';
  print(m1); // Hello my name is
  const name = 'Ray';
  message += name;
  print(message); // Hello my name is Ray
  */

  /*
  // String buffer is used instead of concatenation --> preferable
  final message = StringBuffer();
  message.write('Hello');
  message.write(' my name is ');
  message.write('Ray');
  // To cenvert the string bufferto the String type.
  message.toString();// "Hello my name is Ray"
  print (message);
  */

  /*
  // InterPpolation
  const oneThird = 1 / 3;
  const sentence = 'One third is $oneThird.';//Get variable value in string using $ symbole
  print(sentence);//One third is 0.3333333333333333.
  // You can control the number of decimal places shown on a double by using toStringAsFixed along with the number of decimal places to show.
  final st= 'One third is ${oneThird.toStringAsFixed(3)}.';//The sentence variable needs to be finalnow instead of const because toStringAsFixed(3) is calculated at runtime.
  */

  /*
  //Multuline string
  const bigString = '''
    You can have a string
    that contains multiple
    lines
    by
    doing this.''';
  print(bigString);
  // The three single-quotes (''') signify that this is a multi-line string. Three double-quotes (""") would have done the same thing.
  const oneLine = 'This is only '
                  'a single '
                  'line '
                  'at runtime.';//This is only a single line at runtime.
  // Below is same as above
  /*
  const oneLine = 'This is only ' +
  'a single ' +
  'line ' +
  'at runtime.';
  */
  const twoLines = 'This is\ntwo lines.';
  print(twoLines);
  /*This is
    two lines.*/
  */

  /*
  //Raw string
  const rawString = r'My name \n is $name.';//My name \n is $name.
  */

  /*
  // Exercise 1
  const firstName = "Diya";
  const lastName = "Thakor";

  // Exercise 2
  const fullName= firstName + ' ' + lastName ;
  print(fullName);

  // Exercise 3
  const myDetails = "Hello,my name is $fullName";
  print (myDetails);
  */

  /*
  // Object and dynamic types
  // var myVariable = 42;
  // myVariable = "hello";
  // Above is valid in javaScript but not valid in Dart
  // Dart is an optinoally typed language.That means you can choose to use Dart as a dynamically typed language or as typed language.
  dynamic myVariable = 42;
  myVariable = 'hello'; // OK
  var myVariable1; // defaults to dynamic
  myVariable1 = 42; // OK
  myVariable1 = 'hello'; // OK
  // If you need to explicitly say that any type is allowed, you should consider using the Object? type.
  Object? myVariable3 = 42;
  myVariable3 = 'hello'; // OK
  // you’re telling everyone that you generalized your variable on purpose, and that they’ll need to check its type at runtime if they want to do anything specific with it.
  // Using dynamic, on the other hand, is more like saying you don’t know what the type is; you’re telling people they can do what they like with this variable, but it’s completely on them if their code crashes.
  // object ?  --> ? means null value is allowed
  */

  /*
  // Challenge 1
  int attenance = 90;
  int homework = 80;
  int exam = 94;
  double marks = ((attenance * 20) + (homework * 30) + (exam * 50)) / 100;
  print('Your percentage is ${marks.toStringAsFixed(2)}');

  // Challenge 2
  const name = 'Ray';
  // name += ' Wenderlich'; // Error: Can't assign to the const variable 'name'.

  // Challenge 3
  const value = 10 / 2; //type = doublle

  // Challenge 3
  const number = 10;
  const multiplier = 5;
  final summary = '$number* $multiplier = ${number * multiplier}';
  print(summary);
  */

}
