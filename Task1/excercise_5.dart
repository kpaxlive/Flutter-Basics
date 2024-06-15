extension SetExtension on Set
{
  bool checkDouble(String newMember)
  {
    print('-------------------------------------\n');
    print('Write an extension for Set and check if there is already inside it\n');

    if(this.contains(newMember))
    {
      print('This value already exists on this Set, value is not added to set');
      return true;
    }
    this.add(newMember);
    print('Value has no double in set, value has added to set');
    return false;
  }
}