import 'package:lab3_tutorial1/lab3_tutorial1.dart' as lab3_tutorial1;

void main(List<String> arguments) {
  // print('Hello world: ${lab3_tutorial1.calculate()}!');
  //Loops
  /*
  // 1. While loop
  // var sum=1;
  // while(sum<10){
  //   sum+=4;
  //   print(sum);
  // }
  */
  
  /*
  // 2.Do While loop
  // var sum=1;
  // do{
  //   sum+=4;
  //   print(sum);
  // }while(sum<10);

  //while and do while always not give the same answer because of the initial condition

  // Breaking out of a loop
  // var sum=1;
  // while(true){
  //   sum+=4;
  //   if(sum>10)
  //     break;
  // }
  // print(sum);

  // A random interlude
  // final number=Random();
  // while(number.nextInt(6) + 1 != 6){
  //   print("It's not a six");
  // }
  // while(Random().nextInt(6) + 1 != 6){
  //   print("It's not a six");
  // }
  //NextInt function give number between 0 to n-1
  */

  /*
  //3. for loop
  // for(int i=0 ; i<6 ; i++)
  // print(i);

  // continue keyword
  // for(int i=0 ; i<5 ; i++){
  //   if(i==3)
  //       continue;
  //   print(i);
  // }

  //4. For-in loop
  // const str = "Hello World";
  // for(var s in str.runes)
  //   print(String.fromCharCode(s));
  // const myString = 'I ❤ Dart';
  // for (var codePoint in myString.runes) {
  // print(String.fromCharCode(codePoint));
  // }
  // runes is a collection of all the code points in the string
  // fromCharCode is used to convert the code point integer into a string

  //5. For-each loop
  // const numbers = [1,2,3,4,5,6];
  // numbers.forEach((number) => print(number));
  // numbers.foreach((number) {print(number)});
  */

  /*
  //Mini-exercises
  // Exercise-1
  // var counter = 0;
  // while(counter<10){
  //   print("counter is $counter");
  //   counter++;
  // }

  // Exercise-2
  // for(int i=1 ; i<=10 ; i++){
  //   print("The square if $i is ${i*i}");
  // }

  // Exercise-3
  // const numbers = [1,2,4,7];
  // for(var number in numbers){
  //   print("The square root of $number is ${sqrt(number)}");
  // }

  // Exercise-4
  // const numbers = [1,2,4,7];
  // numbers.forEach((element) => print("The square root of $element is ${sqrt(element)}"));
  */

  /*
  // Challenges
  // Challenge:1
  // const firstName = 'Bob';
  // if (firstName == 'Bob') {
  //   const lastName = 'Smith';
  // } else if (firstName == 'Ray') {
  //   const lastName = 'Wenderlich';
  // }
  // Here lastName has scoped in bracket only

  // Challenge:2
  // true && true //true
  // false || false // false
  // (true && 1 != 2) || (4 > 3 && 100 < 1) // true
  // ((10 / 2) > 3) && ((10 % 2) == 0) // true

  // Challenge:3

  // Challenge:4
  // List<int> arr=[1,1];
  // for(int i=2;i<5;i++)
  // {
  //   arr.add(arr.elementAt(i-1)+arr.elementAt(i-2));
  // }

  //  Challenge:5
  // var sum = 0;
  // for (var i = 0; i <= 5; i++) {
  //   sum += i;
  // }
  // //Ans: sum = 15;

  // Challenge:6
  // for(int i=10;i>=0;i--)
  // {
  //   print(i);
  // }

  // Challenge:7
  // for(int i=0;i<=10;i++)
  // {
  //   print(i/10);
  // }
  */

}
