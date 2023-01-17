/******************************************* DART PROGRAMMING LANGUAGE ****************************************/

// TO USE THE CODE , PLEASE COMMENT ALL THE CODE WHICH YOU DON'T NEED
// ⭐ TRY TO UNDERSTAND CODE WITH CONCEPTS LINE BY LINE , EVERY INFORMATION IS GIVEN RELATED TO THE CODE IN COMMENTS ⭐
// please ignore the spelling mistakes.
// program written using dartpad
void main() {
  print('hello world');

//**************************************

// TOPIC : datatypes in dart
// int bool(true/false) double float String

  var name = 'bharat'; // String
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
  print(news.contains(
      ' ')); // this will also return true because, 'contains method' is taking space as input and space is present in string news between 'i love' & 'love car'

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
  String ageString = ageman
      .toString(); // using toString() method we can conert integer value to string
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
  print(heightboy.toStringAsFixed(
      1)); // here we want only one value  after decimal so we used 1 here .. output will be : 23.5
  // similarly,
  print(heightboy.toStringAsFixed(2)); // output: 23.53
  print(heightboy.toStringAsFixed(
      3)); // it will add 0 to the deciaml part if value after specifed does not exits from after decial value .. output will be : 23.530

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

  //   ~/  is called 'Truncating Division' , in this the fractional result is convered into an integer by rounding towards zero
  // note: the ans of any expression is based on the operator presidence
  print(12 + 3);
  print(12 - 3);
  print(12 * 3);
  print(12 % 3);
  print(12 / 5);
  print(12 ~/
      5); // without this operator if we use / then output will be 2.4 , so it removes the fractional part which is .4 and output is integer only which is 2
  // expression
  print(12 * 3 - 2 / 4); // will be solved based on operators presidence

//   2. Increment and Decrement operator

//   x++ / x-- is postfix   |   ++x / --x is prefix expression
  //  print(10++); // this is wrong , you can not do directly with value only can do with variable
  int a = 10;
  print(2 * a++); //=> here 'a' will be incremented after
  a = 10;
  print(2 * ++a); //=> here 'a' will be incremented first

//   3. Logical and Relational Operator

  // they return the boolean value 'true' or 'false'
  // note : relational operators are used in conditional logic for making decision , they are executed only when condition meet true/false
  print(5 == 2);
  print(5 > 2);
  print(5 < 2);
  print(5 != 2);
  print(5 >= 2);
  print(5 <= 2);

//   example  of conditional logic using if else
  if (5 != 2) print('executed !');

  // note : you can even compare integer variable / value with an double variable / value
  print(10 > 10.01);
  // but you can not compare a number with a string
  //   print(10 > 'hello');  compilation error occure [compilation with sound null safety]

  /* relational operators : > <  >=  <=  == !=  */
/* logical operators : && || [logical AND] and [logical OR] respectively */

//   NOTE :  relarional operators have more presidence over logical operators

//  *****************************************
//   one example :
//    find out is email address is correct or not , only check does it contains @ symble in it or not
//   eg= biggoogle@gmail.com
//   program is
  var check =
      'biggoogle@gmail.com'; // this is a string, note in dart you can place a string in singlw quote ' ' also as it is a statically type language so it deside wether a value is string or character as character has only one alphabet where as string is group of alphabets

  bool ans = check.isNotEmpty && check.contains('@');
  if (ans == true) {
    print('valid email');
  } else {
    print('invalid email');
  }

  print(ans);

//  *****************************************

// TOPIC : type interface with 'var'

//   as dart is static type language so it interence the type of the expression.
  // infernence means to know the type of the expression particly or fully at compile time.
  // so we do not need to declare the type of the variable explicitly
  // so we use var keyword as a prefix to denote the type , but compiler will automaticlly know partically or fully the type of variable or expression
  //eg :
  String na = 'bharat';
  print(na); // we have taken the same string 'bharat'
  print(na.runtimeType);
  var another_name = 'bharat';
  print('another_name');
  print(another_name.runtimeType);
//   ------------------------------------------
//   CASE 1
  print('CASE 1');
  var ag = 32; // declared and initialsed at the same time
  print(ag);
  print(ag.runtimeType);
//   age = 'now name'; //THIS GIVES ERROR because while using 'var' keyword for a variable , if variable is declared and initialised at the same time then - the 'data type' of the variable already  decided by the expression or value it has been given at compilet time
//   print(age);
//   -------------------------------------------
//   CASE 2
  print('CASE 2');
  var maan; // declare only
  maan = 32;
  print(maan);
  print(maan.runtimeType);
  man = 'now name';
  print(maan);
  print(maan.runtimeType);
//   --------------------------------------------
//   NOTE : basically there are three keyword used for type inference
  // 1. var    2. final   3. const

  // var - can be set more than one for any expression or variable
//   eg-
  var checking; // IT IS VALID FOR CASE 2 ONLY NOT FOR CASE 1
  checking = 'bharat';
  checking = 43;
  checking = 43.44;

  // final - variable expression declared with this type can be set only once , you can only perform read operation on the variable and can not perform write operation
//   eg -
  final manff =
      32; // should be declared and initiliazed at the same time // if not so than it gives compilation error that a value must be assigned to the final variable BEACUSE if WHEN WE DELCARE A VARIABLE WITH A FINAL KEYWORD IS DECLARED THAN IT CONTAINS GARBAGE VALUE , NOW THAT GARBAGE VALUE CANNOT BE CHANGED BEALUSE VARAIBLE IS TYPE FINAL , SO THAT GARBAFGE VALUE IS FINAL VALUE FOR THAT VAIABLE , THATS WHY IT SAYS TO ASSIGN A VALUE AT THE TIME OF DELCARATION
  print(manff);
  print(manff.runtimeType);
  // below this gives ERROR BECAUSE YOU CAN NOT CHANGE VALUE NOW OF FINAL TYPE VARIABLE
//   manff = 'now name';
//   print(manff);
//   print(manff.runtimeType);

//   const - it is compile time constant

  const kile = 'hello';

  // BELOW GIVES ERROR BEALUSE A VARIABLE OF TYPE CONST SHOULD BE INITIALIZED AT THE SAME TYPE OF DECARATION
//   const kile;   // to use this code [line 58 59] please comment the [line 55]
//   kile = 'hello';
  print(kile);
  print(kile.runtimeType);
//   kile = 'world'; // gives compile time error beacuse you can not assign new value to a varaible declared as const [constant]
//   print(kile);

  // best practice : const > final > var [ so that you can use a particular vairable with a value you do not want to change | you get to know error at compile time only ]

//  *****************************************

//  *****************************************

  // TOPIC : Dynamic type
  // when you declare a variable a 'dynamic' type than it can take value of any type
//   eg-
  dynamic ex;
  ex = 10;
  print(ex);
  ex = true;
  print(ex.runtimeType);
  ex = 'hello';
  print(ex);
  print(ex.runtimeType);
  ex = 54.3;
  print(ex);
  print(ex.runtimeType);

//  *****************************************

// TOPIC : Control Flow
  // control flow helps in making making decision based on some condition
  /*
   control flow are of following type :
   if/else statement
   while loop [contains break and continue]
   for loop
   switch statement [contains break] 
   enumeration
   * */

//  *****************************************

  // TOPIC : String multiplication
  // you can even multiply a the string with an integer value
//   like : 'String' * numberical value (integer) say N = N times 'String'

  var i = 1;
  while (i <= 5) {
    print('*' * i);
    i++;
  }

//   NOTE :YOU CAN NOT DO THIS below
//       print(5*'hello'); // can not multiply string like this by keeping string on RHS of numeric value

  print(' hello ' *
      5); // keep string on lhs and numberic value on rhs side of multiplication sign

//  *****************************************

// TOPIC : Enum
  // enum is a special type of datatype
  // an variable with type enum has predefined set of contant values
  /* syntax : 
  enum variable_name{
    value1,
    value2,
    value3
    .
    .
    .
    valueN
  }
  */

//  *****************************************

//   TOPIC : 'import'
//   import statement is used to import the funcitonality [like package, libray,etc] which lie outside of our code
//   eg : import 'dart:io'
//        import 'dart:math' , etc

//  *****************************************

  // 𝐓𝐎𝐏𝐈𝐂 - 𝐂𝐨𝐥𝐥𝐞𝐜𝐭𝐢𝐨𝐧𝐬 -------------------------------------------------------------------------

//   collection are the group of objects representing a particular element
// there are varilty of collections avalable in dart
  // but we are taking three types only :
  //   Lists   Maps   Sets
  // Collection-if , Collection-for  , Spreads

//   Lists  ---------------

//   => Lists [also know as array in other programming language]
//   Lists are used to represent the collections of values
  // indexing starts from zero
  // eg-
  var cities = ['delhi', 'new york', 'moscow'];
  print(cities);
  print(cities[
      0]); // here delhi, new york , moscow are called objects and cities is called element
//   print(cities[3]); it gives index out of range error

//   NOTE :  [] is called subscript operator
  // printing each object of element cities :
  // method 1
  cities.forEach((n) => {print('$n')});
  // method 2
  // interating using for loop
  for (int i = 0; i < cities.length; i++) {
    print(cities[i]);
  }

  // TOPIC - For-in loop
  var city = ['delhi', 'new york', 'moscow'];
  for (var i in city) {
    print(i);
  }

//   note : <String> is a type notation which is used to denote that list contains string type objects
  var cit = <String>['london', 'delhi'];
  print(cit);

  // note :  a list declared as 'final' can not be reassigned with another objects but can still be modified
//   eg-
  final moj = ['london', 'paris', 'moscow'];
  print(moj);
  // you can modify like this given below
  moj[0] = 'jaipur';
  print(moj);
  // but , can not modify like this
//   moj = 'las vegas';
//   print(moj);

// Map -------------------------------------
  // Maps are collection of objects , each object having key-value pair
// syntax :
/*  Map map_name{
    'key1' : 'value1',
    'key2' : 'value2',
      .
      .
      .
      'keyN': 'valueN'  // NOTE : value can be of any type      
  };   */

//   eg-
  // either you can declare type of the variable as 'Map' or var/final/const
  Map persons = {
    'name': 'bharat',
    'age': 20,
    'height': 182.3,
  };
  print(persons);

  // other way of declaring map
  Map<String, dynamic> person = {
    // here dynamic means the key and value can be of any dataype values
    'name': 'bharat',
    'age': 20,
    'height': 182.3,
  };
  print(person);

//  *****************************************

  // TOPIC : Null safety
  // Null safety is a feature which lets you to make a varaible or expression an null type or nullable

  // bydefault a variable of any type string/int/etc and any expression are not null [bydefault] they contains some value [or garbage value] which makes its non-null , now
  // if you try to make any variable/epression nullable than it can not be nullable , as it bydefault contains some value and you can not declare it as nullable [ null value ]
  // so to make variable or expression nullable [null] we use 'null safety feature'
  // by using prefix before name of any variable or expression we make it  variable which can contains null value also

  //   summary of above:
//   you can not make any variable of any type as null or contain 'null' as value , because when you declare any variable it inplicitely contains garbage value of that type of the type the variable is
// int x = null; // so this gives error
// print('value of x : $x');
//   to make variable null we use ? symbol after type of variable and before name of the vairalbe
  int? y =
      null; // NOTE: this also means that value y contains null value =>  int ?y; [no need to assign = null , as we have defined by ? symbol that it also can contain null value also]
  print('value of y : $y');
  int? kk;
  print('value of kk : $kk');

  // NOTE THAT : we can not 2 variable if anyone of them is null
  //  eg-
//   var ?aa; // this gives error
//   var bb =3;
//   print(aa+bb);

//   SUB-TOPIC : Flow Analysis - Promotion
  // by flow analysis feature -> 'promotion' makes the nullable variable 'tt' is promoted to non-nullable varible inside the else branch
  int? tt; // nullable variable
  var rr = 4;
  if (tt == null) {
    print('tt is null');
  } else {
    print(tt +
        rr); // tt becomes non-nullable hence does not produce error as [line 20-22]
  }

//   SUB-TOPIC : Flow Analysis - Definite Assignment
  // flow analysis helps to make it easier to write null-safe code
//   in definite assignement  the dart knows that before printing nullable variable it will be assigned with a value and it will become non-nullable variable
//   eg-
  int? ff = 10;
  //NOTE : Definite Assignment gives you the ability to declare a non-nullable variable and initialize it later
  var ee;
//   print(ee); it gives error as ee is a non-nullable variablee and it must be assigned before it get printed this is done by definite assignment
  if (ff >= 0) {
    ee = 1;
  } else {
    ee = -1;
  }
  print(ee);

//  *****************************************
}
/*creator : Bharat */
