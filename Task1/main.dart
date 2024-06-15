
import 'excercise_1.dart';
import 'excercise_2.dart';
import 'excercise_3.dart';
import 'excercise_4.dart';
import 'excercise_5.dart';
import 'excercise_6.dart';

void main()
{

  //Write an extension for String and check if the given string is palindrome.
  String str = "Ada";
  str.checkPalindrome();                                 //excercise_1.dart

  //Write an extension for Int and check the given number is prime.

  int number = 4;
  number.checkPrime();                                  //excercise_2.dart

  //Write an extension for DateTime and find the difference in given dates in days
  DateTime date = DateTime(2023, 05, 25);
  DateTime other = DateTime(2023, 11, 2);
  date.daysBetween(other);                              //excercise_3.dart

  //Write an extension for Bool and add logic equations that uses boolean variable
  bool a = true;
  bool b = false;
  a.logicEquation(b);                                   //excercise_4.dart

  //Write an extension for Set and check for doubles, if not add it to set
  Set sports = {'Basketball', 'Tenis', 'Volleyball', 'Football'};
  String football = 'Football';
  String baseball = 'Baseball';
  sports.checkDouble(football);                         //excercise_5.dart
  sports.checkDouble(baseball);

  //Write an extension for Map and detect the same surnames and save them to a family.
  var individuals = 
  {
    'Yeni1': [Individual(name: 'Melih', surname: 'Yeni'),],
    'Ayan1': Individual(name: 'Duhan', surname: 'Ayan'),
    'Öztürk1': Individual(name: 'Yeliz', surname: 'Öztürk'),
    'Ayan2': Individual(name: 'Furkan', surname: 'Ayan'),
    'Kaya1': Individual(name: 'Mehmet', surname: 'Kaya'),
    'Kaya2': Individual(name: 'Zeynep', surname: 'Kaya'),
  };
  
  individuals.membersOfFamilies();                       //excercise_6.dart
}