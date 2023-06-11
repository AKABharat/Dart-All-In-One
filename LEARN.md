# Learn Dart Programming Language

## Introduction

This is a guide to learn the Dart programming language. Dart is a general-purpose programming language developed by Google. It is primarily used for building mobile, web, and desktop applications. This guide will cover the basics of Dart, including data types, string manipulation, type conversion, operators, control flow, and more.

## Table of Contents

1. [Data Types](#data-types)
2. [String Concatenation and Interpolation](#string-concatenation-and-interpolation)
3. [String Escape and Raw](#string-escape-and-raw)
4. [Multiline Strings](#multiline-strings)
5. [Converting Case](#converting-case)
6. [Finding and Replacing](#finding-and-replacing)
7. [Type Conversion](#type-conversion)
8. [Operators](#operators)
9. [Type Inference with `var`](#type-inference-with-var)
10. [Dynamic Type](#dynamic-type)
11. [Control Flow](#control-flow)
12. [String Multiplication](#string-multiplication)
13. [Enum](#enum)
14. [Import](#import)

## Data Types

Dart has several built-in data types:

- `int`: represents integer values.
- `bool`: represents boolean values (true or false).
- `double`: represents double-precision floating-point values.
- `String`: represents a sequence of characters.

Example:

```dart
var name = 'bharat'; // String
var age = 20; // int
var student = true; // bool
var marks = 50.00; // double

print(name);
print(age);
print(student);
print(marks);
```

## String Concatenation and Interpolation

In Dart, you can concatenate strings using the `+` operator or using string interpolation with the `$` sign. String interpolation allows you to include expressions within a string.

Example:

```dart
var str1 = 'hello';
var str2 = 'world';

print(str1 + ' ' + str2); // string concatenation
print('$str1 $str2'); // string interpolation

int num = 10;
print('${num * 10 + 20}'); // evaluating expression in string interpolation
```

## String Escape and Raw

Dart provides string escape using `\` and string raw using `r`. String escape allows you to include special characters like quotes within a string. String raw allows you to include backslashes within a string.

Example:

```dart
print('today I\'m feeling good'); // string escape
print(r'c:\window\desktop'); // string raw
```

## Multiline Strings

Dart supports multiline strings, which can span across multiple lines and preserve the formatting.

Example:

```dart
String s = """
Here we are printing
a multiline string
""";

print(s);
```

## Converting Case

You can convert strings to uppercase or lowercase using the `toUpperCase()` and `toLowerCase()` methods, respectively.

Example:

```dart
var str = 'welcome to dart course';
print(str.toUpperCase()); // converting to uppercase

var man = 'WELCOME TO DART COURSE';
print(man.toLowerCase()); // converting to lowercase

var dis = 'operating system'.toUpperCase();
print(dis);
```

## Finding and Replacing

You can check if a string contains a specific substring using the `contains()` method. To replace a substring with a new value, you can use the `replaceAll()` method.

Example:

```dart
var news = "i love car";
print(news.contains('car')); // true
print(news.contains('bike')); // false
print(news.contains(' ')); //
