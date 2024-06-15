
extension BoolExtension on bool 
{
  String logicEquation(bool other) 
  {
    print('-------------------------------------\n');
    print('Write an extension for Bool and find the logic equation between two\n');

    String result = '';

    if (this && other) 
    {
      result = 'Both are true';
      print(result);
      return result;
    } else if (this && !other) 
    {
      result = 'The first is true, the second is false\n';
      print(result);
      return result;
    } 
    else if (!this && other)
    {
      result = 'The first is false, the second is true\n';
      print(result);
      return result;
    } 
    else
    {
      result = 'Both are false\n';
      print(result);
      return result;
    }
  }
}