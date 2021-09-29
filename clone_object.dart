class Person {
  final Map<String, Object> _values;
  static const FIRST_NAME_KEY = 'FIRST_NAME';
  static const LAST_NAME_KEY = 'LAST_NAME';
  Person.from(Map<String, Object> props) : _values = props;
  Person(
      {Map<String, Object>? props,
      required String firstName,
      required String lastName})
      : _values = {FIRST_NAME_KEY: firstName, LAST_NAME_KEY: lastName};

  // @override
  // bool operator ==(covariant Person other) => other.firstName == firstName && other.lastName = lastName;

  @override
  String toString() => _values.toString();
}

extension Properties on Person {
  String get firstName => _values[Person.FIRST_NAME_KEY].toString();
  set firstName(String newValue) => _values[Person.FIRST_NAME_KEY] = newValue;
  String get lastName => _values[Person.FIRST_NAME_KEY].toString();
  set lastName(String newValue) => _values[Person.FIRST_NAME_KEY] = newValue;
}

extension Clone on Person {
  Person clone([Map<String, Object>? additionalProps]) =>
      Person.from(Map.from(_values)..addAll(additionalProps ?? {}));
}

void testCloneObject() {
  final foo = Person(firstName: 'foo firstname', lastName: 'foo lastname');
  print(foo);
  final coppyOfFoo = foo.clone({'age': 30});
  print(coppyOfFoo);

  print(coppyOfFoo.firstName);
}
