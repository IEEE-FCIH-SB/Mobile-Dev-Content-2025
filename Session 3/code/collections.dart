void main() {
//lists
  List names = ['Jack', 'Jill']; //dynamic list (can store any type of data)
  List<int> ages = [30, 40, 50];
  print(names[0]);
  print(ages[1]);

//list operations
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6);
  numbers.addAll([7, 8, 9]);
  numbers.insert(1, 20); //insert 20 at index 1
  numbers.remove(3);
  numbers.removeAt(2);
  print(numbers);

  //sets
  Set countries = {
    'USA',
    'INDIA',
    'CHINA'
  }; //dynamic set (can store any type of data)
  Set<int> number = {1, 2, 3, 4, 5};
  print(countries);
  print(number);
  //set operations
  countries.add('NIGERIA');
  countries.remove('USA');
  print(countries);

  //maps
  Map<String, String> countriesCapitals = {
    'USA': 'Washington D.C.',
    'INDIA': 'New Delhi',
    'CHINA': 'Beijing'
  };
  print(countriesCapitals['USA']);
  print(countriesCapitals['INDIA']);

  //map operations
  countriesCapitals['NIGERIA'] = 'Abuja';
  countriesCapitals.remove('USA');
  print(countriesCapitals);

  //collection methods
  List<int> num = [1, 2, 3, 4, 5];

  //forEach
  num.forEach((element) => print(element));
  print(num);

  //map
  List<int> numbers1 = num.map((number) => number * 2).toList();
  print(numbers1);

  //reduce
  int sum = num.reduce((value, element) => value + element);
  print(sum);

  //where
  List Evens = num.where((element) => element % 2 == 0).toList();
  print(Evens);
}
