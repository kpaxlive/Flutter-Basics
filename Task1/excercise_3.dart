
extension DateTimeExtension on DateTime 
{
  int daysBetween(DateTime other) 
  {
    print('-------------------------------------\n');
    print('Write an extension for DateTime and find the difference in given dates in days\n');
    
    int differencebyDay = this.difference(other).inDays.abs();

    print('Days between date ${this.year}-${this.month}-${this.day} and ${other.year}-${other.month}-${other.day} is ${differencebyDay}!\n');
    return differencebyDay;
  }
}