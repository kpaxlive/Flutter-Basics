class Individual {
  final String name;
  final String surname;

  Individual({
    required this.name,
    required this.surname,
  });
}

extension MapExtension on Map {
  Map organizeIntoFamilies() 
  {
    Map families = {};

    for (var value in this.values) 
    {
      if (value is Individual) 
      {
        String surname = value.surname;
        if (!families.containsKey(surname)) {
          families[surname] = [];
        }
        families[surname]!.add(value);
      }
    }
    return families;
  }

  void membersOfFamilies() {
    print('-------------------------------------\n');
    print('Write an extension for Map to print the count of members in each family\n');

    var families = organizeIntoFamilies();
    families.forEach((surname, members) 
    {
      print('Family $surname has ${members.length} members.');
    });
    print('\n');
  }
}
