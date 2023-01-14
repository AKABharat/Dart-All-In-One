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
  
  //   ~/  is called 'Truncating Division' , in this the fractional result is convered into an integer by rounding towards zero
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
   print(10++); // this is wrong , you can not do directly with value only can do with variable
   int a = 10;
   print(2*a++); //=> here 'a' will be incremented after
   a = 10;
   print(2*++a); //=> here 'a' will be incremented first
  
  
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
  
 /* relational operators : > <  >=  <=  == !=  */
/* logical operators : && || [logical AND] and [logical OR] respectively */
  
//   NOTE :  relarional operators have more presidence over logical operators

//  *****************************************
//   one example :
//    find out is email address is correct or not , only check does it contains @ symble in it or not 
//   eg= biggoogle@gmail.com
//   program is 
  var check = 'biggoogle@gmail.com'; // this is a string, note in dart you can place a string in singlw quote ' ' also as it is a statically type language so it deside wether a value is string or character as character has only one alphabet where as string is group of alphabets
  
  bool ans = check.isNotEmpty && check.contains('@');
   if(ans == true){  
     print('valid email');
   }
  else{
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
  String name = 'bharat';
  print(name);     // we have taken the same string 'bharat'
  print(name.runtimeType);
  var another_name = 'bharat';
  print('another_name'); 
  print(another_name.runtimeType);
//   ------------------------------------------
//   CASE 1
  print('CASE 1');
  var age = 32; // declared and initialsed at the same time
  print(age);
  print(age.runtimeType);
//   age = 'now name'; //THIS GIVES ERROR because while using 'var' keyword for a variable , if variable is declared and initialised at the same time then - the 'data type' of the variable already  decided by the expression or value it has been given at compilet time
//   print(age); 
//   -------------------------------------------
//   CASE 2
   print('CASE 2');
  var man;  // declare only
  man = 32;
  print(man);
  print(man.runtimeType);
  man = 'now name';
  print(man);
  print(man.runtimeType);
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
  final manff=32;  // should be declared and initiliazed at the same time // if not so than it gives compilation error that a value must be assigned to the final variable BEACUSE if WHEN WE DELCARE A VARIABLE WITH A FINAL KEYWORD IS DECLARED THAN IT CONTAINS GARBAGE VALUE , NOW THAT GARBAGE VALUE CANNOT BE CHANGED BEALUSE VARAIBLE IS TYPE FINAL , SO THAT GARBAFGE VALUE IS FINAL VALUE FOR THAT VAIABLE , THATS WHY IT SAYS TO ASSIGN A VALUE AT THE TIME OF DELCARATION
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
  
} 

//  *****************************************

/*creator : Bharat */
