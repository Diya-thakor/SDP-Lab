import 'package:lab3_tutorial3/lab3_tutorial3.dart' as lab3_tutorial3;

void main(List<String> arguments) {
  // print('Hello world: ${lab3_tutorial3.calculate()}!');
  // UTF - 16 and character
  // In dart we don't have char data type
  // Dart strings are a collection of UTF - 16 code units.
  var str = "Hello!";
  print(str.codeUnits);
  // [72, 101, 108, 108, 111, 33]
  // However, 16 bits only give you 65,536 combinations, and believe it or not, there are more than 65,536(2^16) characters in the world! Remember for the large numbers that the emojis ,we  need more than 16 bits to represent those values.

  // surrogatr pairs
  // const dart = '🎯';
  // print(dart.codeUnits);//[55356, 57263]

  // const dart = '🎯 ';
  // print(dart.runes); // (127919)

  // const flag = ' ';
  // print(flag.runes); // (127474, 127475)

  // It uses a pair of code points called 'regional indicator symbols' to represent a flag.

  const family = '.';
  print(family.runes); // 46
  // (128104, 8205, 128105, 8205, 128103, 8205, 128102)
}
