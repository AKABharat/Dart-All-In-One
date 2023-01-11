// TO USE THE CODE , PLEASE COMMENT ALL THE CODE WHICH YOU DON'T NEED 
// program written using dartpad
void main(){
print('hello world');

**************************************
  
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
//   // string concatination 
  print(str1+" "+str2);
//   // string interpolation
  print('$str1 $str2'); // or print('${str1} ${str2}');
  
  
  // we can even evalute a expression in string interpolation
  int num = 10;
  print('${num*10+20}'); // 120 output
  
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
  
  String another ="""
  hello     there 
        how  are           you ???   ?
  """;
    print(another);
  
//**************************************
  
  // TOPIC : converting lowecase to uppercase
  // a -> A
    var str = 'welcome to dart course';
    print(str.toUpperCase());
  
//   // TOPIC : converting uppercase to lowecase
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
     print(news.replaceAll('car','bike'));
  // note here it will only replace 'car' with bike like in carsssss
  
  //**************************************
  
  
}
 /*creator : Bharat */
