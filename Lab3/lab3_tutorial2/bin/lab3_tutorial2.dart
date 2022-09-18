// ignore_for_file: prefer_function_declarations_over_variables

import 'package:lab3_tutorial2/lab3_tutorial2.dart' as lab3_tutorial2;
import 'dart:math';

void main() {
  /*
  // Making parameters optional
  //  print(fullName('Ray', 'Wenderlich'));
  // print(fullName('Albert', 'Einstein', 'Professor'));
  //   Ray Wenderlich
  // Professor Albert Einstein

  // Providing default values
  // withinTolerance(5); // true
  // withinTolerance(15); // false
  // withinTolerance(9, 7, 11); // true

  // Naming parameters
  // print(withinTolerance(9, min: 7, max: 11)); // true
  // print(withinTolerance(9, min: 7, max: 11)); // true
  // print(withinTolerance(9, max: 11, min: 7)); // true
  // print(withinTolerance(5)); // true
  // print(withinTolerance(15));
  // print(withinTolerance(5, min: 7));
  // print(yourAreWonderful('Bob',10));
  */
  // One reason that you need anonymous functions is that you can’t assign a named function to a variable:
  /*
  Function multiply = (int a,int b){
    return a*b;
  };
  print(multiply(2,3));
  xyz(multiply);
  final triple = applyMultiplier(3);
  print(triple(6));
  const numbers = [1,2,3];
  // Anonymous function for forEach loop:
  numbers.forEach((number){
    final tripled = number * 3;
    print(tripled);
  });
  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }
  */
  /*
  // Anonymous functions:  

  // The anonymous function it returns closes over the multiplier value that’s passed in as a parameter to applyMultiplier.

  var counter = 0;
  final incrementCounter = () {
    counter += 1; //counter is a closure
  };
  */
  /*
  // Mini exercises:
  // Exercise:1
  Function wonderful = (String name, int numberPeople) {
    return ("You're wonderful,$name. $numberPeople think so.");
  };
  // Exercise:2
  print(wonderful('Bob',10));
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((name){
    print("You are wonderful $name");
  });
  // Mini-exercise:
  // const people = ['Chris', 'Tiffani', 'Pablo'];
  // people.forEach((String name) =>
  //   print("You're wonderful,$name.")); 

  // print(add(1,2));
  */

  /*
  // Challenges:
  // Challenge : 1
  int number = 3;
  print(prime(number));
  // Challenge : 2
  Function square = (int num) {
    return num * num;
  };
  print (repeatTask(4, 2, square));
  // Challenge : 3
  print ( repeatTask1(4,2) );
  */
}

/*
//Challenges example functions
int repeatTask1(int times, int input) {
  int ans = input;
  final square= (int n) => n*n;
  for (int i = 0; i < times; i++) {
    ans = square(ans);
  }
  return ans;
}

int repeatTask(int times, int input, Function task) {
  int ans = input;
  for (int i = 0; i < times; i++) {
    ans = task(ans);
  }
  return ans;
}

bool prime(int number) {
  int temp = (sqrt(number)).toInt();
  for (int i = 2; i < (temp); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
*/

// Making parameters optional
/*
  Parameters like the ones below are called positional parameter, because you have to supply the arguments in the same order.
String fullName(String first, String last, String title) {
  return '$title $first $last';
}
// Writing [String? title] makes title optional. If you don’t pass in a value for title, then it will have the value of null,which means “no value”.
String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}*/

// Providing default values
/*
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
} */

// Naming parameters
// ignore: slash_for_doc_comments
/*
bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}
*/

// Making named parameters required
// Since the function signature was getting a little long, adding a comma after the last parameter lets the IDE format it vertically.
/*
bool withinTolerance({
  required int value,
  int min = 0,
  int max = 10,
}) {
  return min <= value && value <= max;
}*/

// Anything beyond input and output, that is, anything that affects the world outside of the function, is a side effect.
// In first hello we have side effect (print statement) and in 2nd hello no side effect.
/*
void hello() {
  print('Hello!');
}

String hello() {
  return 'Hello!';
}
*/

//functions without side effects are easier to deal with and reason about. You can rely on them to do exactly what you expect because they always return the same output for any given input. These kinds of functions are also called pure functions.

// Here we have side effect that myPreciousData is changed inside function.
/*
var myPreciousData = 5782;
String anInnocentLookingFunction(String name) {
  myPreciousData = -1;
  return 'Hello, $name. Heh, heh, heh.';
} */

// Write your functions so that each one has only a single job to do. --> clean code
// This is known as single responsibility principle.

// Use noun phrases for pure functions and verb phrases for functions with side effects.Also use verb phases if you want to emphasize that the function does a lot of work.

// String compliment(int number) {
//   return '$number is a very nice number.';
// }

// This is valid and same as above and it will be converted into
/*
String compliment(dynamic number) {
  return '$number is a very nice number.';
}
*/
/*
compliment(number) {
  return '$number is a very nice number.';
}
*/

// Mini exercises
// Exercises :1
/*
String yourAreWonderful(String name,int numberPeople)
{
  return ("You're wonderful,$name. $numberPeople think so.");
}*/

// In Dart functions are first-class citizens.

// xyz and applyMultiplier is higher order function.
/*
void xyz(Function abc)
{
  print(abc(2,3));
}*/

// Function applyMultiplier(num multiplier) {
//   return (num value) {
//     return value * multiplier;
//   };
// }

// Arrow function:
// Syntax :
// (parameters) => expression;
int add(int a, int b) => a + b;
