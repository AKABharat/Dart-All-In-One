// TO USE THE CODE , PLEASE COMMENT ALL THE CODE WHICH YOU DON'T NEED
// program written using dartpad
void main() {
  print('hello world');

//**************************************

// TOPIC : datatypes in dart
// int bool(true/false) double float String

  var name = 'bharat doodi'; // String
  var age = 20; // int
  var student = true; // bool
  var marks = 50.00; // float

  print(name);
  print(age);
  print(student);
  print(marks);

//**************************************

  // TOPIC : string concatination and string interpolation

  var str1 = 'hello';
  var str2 = 'world';
   // string concatination
  print(str1 + " " + str2);
  // string interpolation
  print('$str1 $str2'); // or print('${str1} ${str2}');

  // we can even evalute a expression in string interpolation
  int num = 10;
  print('${num * 10 + 20}'); // 120 output

  //**************************************

// TOPIC : string escape "\" and string raw "r"
  // if you want to use ' or " inside a string then we use string escape \
  // if you want to use \ then we use string raw r

  // string escape to use ' or "
  print('today i\'m feeling good');
// string escape to use \
  print(r'c:\window\desktop');

//**************************************

//TOPIC : multiline string
  String s = """
   here we are printing multiline string
   """;
  print(s);
  // NOTE : here string will be printed in the order you fit string in it

  String another = """
  hello     there 
        how  are           you ???   ?
  """;
  print(another);

//**************************************

  // TOPIC : converting lowecase to uppercase
  // a -> A
  var str = 'welcome to dart course';
  print(str.toUpperCase());

   // TOPIC : converting uppercase to lowecase
  var man = 'WELCOME TO DART COURSE';
  print(man.toLowerCase());

  // NOTE : here man and str are varible of type string or object and toUpperCase & toLowerCase are methods

  // NOTE : methods and function are different as,methods are applied to object using dot operator "." where as there is nothing such for function

  // another way of representation
  var dis = "operating system".toUpperCase();
  print(dis);

//**************************************

//   TOPIC : Finding and Replacing
  //method for "Finding" is : contains('string literal')
  //   contains method take string literal as argument and return bool value [true/false] as output
  var news = "i love car";
  print(news.contains('car')); // true
  print(news.contains('bike')); // false
  print(news.contains(' ')); // this will also return true because, 'contains method' is taking space as input and space is present in string news between 'i love' & 'love car'

  //  method for "replace" is : replaceAll('replacing_word','new_word')
  news = 'i love car and only carsssss !';
  print(news.replaceAll('car', 'bike'));
  // note here it will only replace 'car' with bike like in carsssss

  //**************************************

  // TOPIC : Type conversion

  //  int -> String

//   NOTE : to check the type of a variable in program we use method " runtimeType"   syntax :  print(name_of_variable.runtimeType);
  int ageman = 12;
  print(ageman);
  print(ageman.runtimeType);
  //String ageString =age; // ❌ this is wrong way because dart is strong typed language
  String ageString = ageman.toString(); // using toString() method we can conert integer value to string
  print(ageString);
  print(ageString.runtimeType);

  //  double -> String

  double heightboy = 23.53;
  print(heightboy);
  print(heightboy.runtimeType);
  String myString;
  myString = heightboy.toString();
  print(myString);
  print(myString.runtimeType);
//   NOTE : if you want to convet a double to string to a fixed decimal place only and not as it is as value in double then use following method below
  print(heightboy.toStringAsFixed(1)); // here we want only one value  after decimal so we used 1 here .. output will be : 23.5
  // similarly,
  print(heightboy.toStringAsFixed(2)); // output: 23.53
  print(heightboy.toStringAsFixed(3)); // it will add 0 to the deciaml part if value after specifed does not exits from after decial value .. output will be : 23.530

  //   String -> double

  String countinstring = '3.451';
  print(countinstring);
  print(countinstring.runtimeType);
  double countdouble = double.parse(countinstring);
  print(countdouble);
  print(countdouble.runtimeType);

  // NOTE : all strings can not be converted into the double like - 'hello' is a string but it can not be converted into double , because 'hello' is not decimal value rather an array of characters which is not a double but, string like '563.44' can be conveted into double or integer '563'

  // int -> double

  // NOTE : you can not assign an integer value to double variable like: double var = 10 this is wrong
  // you can use toDouble() method
   int var1 = 10;
   double var2 = var1.toDouble();
   print(var1);
   print(var1.runtimeType);
   print(var2);
   print(var2.runtimeType);
  

//**************************************
  
//   TOPIC : Operators 
  
//   1. Arithematic operator
//   + - / * %  ~/ 
  
  //   ~/  is called trucating operator , in this the fractional result is convered into an integer by rounding towards zero
  // note: the ans of any expression is based on the operator presidence
   print(12+3);
   print(12-3);
   print(12*3);
   print(12%3);
   print(12/5);
   print(12~/5); // without this operator if we use / then output will be 2.4 , so it removes the fractional part which is .4 and output is integer only which is 2
  // expression
   print(12*3-2/4); // will be solved based on operators presidence
  
//   2. Increment and Decrement operator
  
//   x++ / x-- is postfix   |   ++x / --x is prefix expression
   print(10++); this is wrong , you can not do directly with value only can do with variable
   int a = 10;
   print(2*a++); => here 'a' will be incremented after
   a = 10;
   print(2*++a); => here 'a' will be incremented first
  
  
//   3. Logical and Relational Operator
  
  // they return the boolean value 'true' or 'false'
  // note : relational operators are used in conditional logic for making decision , they are executed only when condition meet true/false
  print(5==2);
  print(5>2);
  print(5<2);
  print(5!=2);
  print(5>=2);
  print(5<=2);

  
  
//   example  of conditional logic using if else
  if(5!=2)
    print('executed !');
  
  // note : you can even compare integer variable / value with an double variable / value
  print(10 > 10.01);
  // but you can not compare a number with a string
 //   print(10 > 'hello');  compilation error occure [compilation with sound null safety]
  
  
} 

/*creator : Bharat */
