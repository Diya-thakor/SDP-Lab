import 'package:lab2_tutorial4/lab2_tutorial4.dart' as lab2_tutorial4;

const PI = 3.14 ;
enum States{
  happy,
  sad,
  comma,
  hibernate,
}
enum Music{
  playing,paused,stopped
}
void main(List<String> arguments) {

  
    //Control Flow

    //Boolean Data Type --- var can take values 'true' or 'false'.
    const bool sahi=true;

    // dart is data type inference
    const galat=false;    
    const result = ('c' == 'd');       // equality operator 
    // const result = 'c' == 'd';  // This is also valid 

    // can compare int and double because they both belong to num type
    int a=9;
    double b=10;
    print( !(a==b) );   // NOT operator (bang operator) --- to invert the values
  

    // other operators for comparison <= , >= ,< , > , !=

    // George Boole invented the Boolean

    // LOGICAL OPERATORS  --- combine multiple conditions to form a result.

    /// Precedence of operators (higher -> lower) : ! , >= , > , <= , < , == , != , && , || 
    print( !sahi==galat && sahi || galat );    //true

    // can override the precedence with parentheses
    print( ! (sahi==galat && sahi || galat) );    //false

    // can use == and != operator to compare strings 
    const myschool = "RJJ";
    const desired = "IITB";
    print(myschool == desired);
  
    //exercise1
    const myAge = 19;
    const isTeenager = (myAge>=13) && (myAge<=19) ;
    print("Teenager: $isTeenager");

    //exercise2
    const maryAge = 30;
    const isBothTeenager = isTeenager && (maryAge>13) && (maryAge<19) ;
    print("Both Teenager: $isBothTeenager");

    //exercise3
    const reader = "Diya" ;
    const ray = "Ray Wenderlich";
    const rayIsReader = reader == ray ;
    print("rayIsReader: $rayIsReader");

    // IF - ELSE statements
    // syntax : if(boolean expression){ ... }  else { ... }
    
    if(isTeenager){
      print("Yoohooo!! I'm teenageer!!");
    }
    else{
      print("I'am not teenager!!");
    }

    // ELSE IF chain --- test multiple conditions, one by one, until a true condition is found.
    const marks=98;
    if(marks>80)
      print("Grade : A");
    else if(marks>60)
      print("Grade : B");
    else if(marks>40)
      print("Grade : C");
    else
      print("fail");

    // SCOPE of the variables --- global , local
    // global( top level variable ) : defined outside of the main function and outside of any curly braces.
    // local : defined inside some braces and scope of them is within those braces only

    if(sahi){
      const happiness = 100;  // local within if block, can't access outside the if block
      print("the level of happiness is: $happiness");
    }

    // TERNARY OPERATOR --- need 3 operands , help to reduce the length of the code , make code more readable
    // Exercise 2(1 is above)
    (isTeenager) ? print("Yoohooo!! I'm teenageer!!") : print("Shit !! I'am not teenager!!");

    // SWITCH CASE statement --- replace if else chaining
    // not support range comparisons like >=,<= etc. only supports == operation
    /*
        switch(string var or num var){
          case val1:
            statements to be executed;
            break;
          case val2:
            statements to be executed;
            break;
          default:
            statements to be executed if no match;
            break;
        }
    */

    // ENUM --- use them to define your own type with a finite number of options with switch statement also
    // have to define outside of the main function
    // naming convention : name -> 1st capital letter : value -> lowerCamelCase
    // dart enum is not integer

    const stateOfMind = States.happy;
    print(stateOfMind); //States.happy
    print(stateOfMind.index ); //zero based index 0

    const stateOfMusic = Music.paused;
    switch(stateOfMusic){
      case Music.playing:
        print("music is plyed well");
        break;
      case Music.paused:
        print("music is paused");
        break;
      case Music.stopped:
        print("music is stopped");
        break;
    }
}
