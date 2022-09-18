import 'package:lab2_tutorial2/lab2_tutorial2.dart' as lab2_tutorial2;
import "dart:math";

void main(List<String> arguments) {
  // print('Hello world: ${lab2_tutorial2.calculate()}!');
  /*
  //Comments
  // 2 types of comment: Code and documentation
  // This is a single line comment.
  /*
    This is also a comment.
    This is a multiline comment.
  */
  /* 
    /*
      This is a comment inside a comment.
    */
  */
  ///This is documentation comment.(single line)
  /**
   * Me, too!(documentation comment - multiline)
   */
  */

  /*
  // Printing output
  print("Hello world");
  // It will print on console
  */

  /*
  // Statement vs expression
  // Statement
  print("Hello Dart");
  // Statement that don't need to evaluate just compiler will do that work

  // Expression
  42;
  3+2;
  "Hello dart expression";
  // Expression need to be evaluated
  */

  /*
  // Arithmetic operation

  // Simple operation:

  // 1) Add
  // This will not generate an error
  2+6;
  print(2+6);

  // 2) Division

  // 2 types: 
  // 1)Integer division
  print(22/7); // 3.142857142857143

  // 2)Decimal division
  print(22~/7); // 3

  // 3)Euclidion modulo operation
  print(28.5%10); // 8.5
  2 + 6
  10 - 2
  2 * 4
  24 / 3
  // Order of an expression:
  // It's good to give parenthesis to remove ambiguty
  print(((8000 / (5 * 10)) - 32) ~/ (29 % 5)); // 32
  // precedence: (/ == * == ~/ == %) > (+ == -)
  */

  /*
  // These convert an angle from degrees to radians, and then compute the sine and cosine respectively.
  print(sin(45 * pi / 180));
  cos(135 * pi / 180);
  print(1 / sqrt(2));
  print(sin(45)); // This is not printing same as (1/sqrt(2))
  print(max(5, -6));
  */

  /*
  // Naming Data
  // Identifiers cannot include special symbols except for underscore (_) or a dollar sign ($).
  // Identifiers can include both, characters and digits. However, the identifier cannot begin with a digit.
  // This has not generated any error!!!
  int $result=5;
  print($result);
  int num=10;
  num=15;
  // The int part of the statement is known as a type annotation which tells Dart explicitly what the type is.
  // Dart doesn’t have the primitive variable types that exist in some languages. Everything is an object. Although int and double look like primitives, they’re subclasses of num, which is a subclass of Object.
  print(10.isEven);
  print(3.14159.round());
  */

  /*
  // Type safety
  // In dart once we define type then we cann't change it.(Type-safe)

  num myNum;
  myNum = 10;
  myNum = 3.14;
  // myNum = "t";//Not valid
  print(myNum);
  */

  /*
  // Dynamic type
  // This lets you assign any data type you like to your variable, and the compiler won’t warn you about anything.

  dynamic myVar;
  myVar = 10;
  myVar = "str";
  print(myVar);
  */

  /*
  // Type iterface
  var num = 10; // This will automatically set the type of num to int and later don't allow to make is double
  num = 5;
  // num = 10.5; // Invalid
  print(num);
  */

  /*
  //Constants
  // Variables whose value you can change are known as mutable data.
  // We can use constants rather than variables whenever possible. These unchangeable variables are known as immutable data
  // Const will by default identify the type of an variable
  const myConst = 10;
  // myConst = 5; //Invalid
  print(myConst);

  // Final constants
  // You’ll want a constant in your program, but you don’t know what its value is at compile time. You’ll only know the value after the program starts running. This kind of constant is known as a runtime consatant
  // If you can’t create a const variable because you don’t know its value at compile time, then you must use the final keyword to make it a runtime var newVariable = constant.

  final hsm= DateTime.now().hour;
  print(hsm);

  */

  /* Always try to choose meaningful names for your variables and constants.In Dart, it’s standard to use lowerCamelCase for variable and constant names. */

  /*
  // Mini exercise
  // 1)
  const myAge = 18;
  // 2)
  double averageAge = 18;
  averageAge = (19+18)/2;
  // 3)
  const testNumber = 10;
  const evenOdd =testNumber % 2 ;

  // This evenOdd will be 0 or 1 only...
  */

  /*
  // Var keyword
  var counter = 0;
  counter = counter + 1;
  counter = counter - 1;
  */

  // Shorthand of above code is:

  /*
  var counter = 0;
  counter += 1;
  counter -= 1;
         OR
  var counter = 0;
  counter++; // 1
  counter--; // 0
  */

  /*
  // Challenge

  // Challenge 1 : Variable
  const myage = 18;
  int dogs = 0;
  dogs++;

  // Challenge 2 :
  var age = 16; // Here the type of age can also be int
  print(age);
  age = 30;
  print(age);

  // Challange 3:
  const x = 46;
  const y = 10;
  const answer1 = (x * 100) + y; // 4610
  const answer2 = (x * 100) + (y * 100); // 5600
  const answer3 = (x * 100) + (y / 10); // 4601.0
  print('$answer1,$answer2,$answer3');

  // Challange 4 :
  const rating1 = 5.0;
  const rating2 = 1.0;
  const rating3 = 3.0;
  const averageRating = (rating3+rating2+rating1)/3;
  print(averageRating);

  // Challange : 5
  const a = 1.0;
  const b = 5.0;
  const c = 2.0;
  final root1 = (-b + sqrt((b*b)-(4*a*c)))/(2*a);
  final root2 = (-b - sqrt((b*b)-(4*a*c)))/(2*a);
  print('$root1,$root2');
  */

}
