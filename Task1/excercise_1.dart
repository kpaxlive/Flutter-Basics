

extension StringExtension on String
{
  bool checkPalindrome()
  {
    print('--------------------------------------\n');
    print('Write an extension for String and check if the given string is palindrome.\n');

    if(this.toLowerCase() == this.toLowerCase().split('').reversed.join())
    {
      print('Yes, ${this} is palindrome');
      return true;
    }
    else
    {
      print('No, ${this} is not palindrome!');
      return false;
    }
  }
}