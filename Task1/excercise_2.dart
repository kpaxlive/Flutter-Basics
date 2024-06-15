


extension IntExtension on int
{
  bool checkPrime()
  {
    print('-----------------------------------------\n');
    print('Write an extension for Int and check the given number is prime\n');
    if (this <= 1)
    {
      print('The number $this is not prime!\n');
      return false;
    } 

    for (int i = 2; i <= (this / 2).floor(); i++) 
    {
      if (this % i == 0)
      {
        print('The number $this is not prime!\n');
        return false;
      }
    }
    print('The number $this is a prime!\n');
    return true;
  }
}