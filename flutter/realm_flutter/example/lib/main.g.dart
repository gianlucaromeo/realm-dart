// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Car extends _Car with RealmObject {
  static var _defaultsSet = false;

  Car(
    String make, {
    String? model,
    int? kilometers = 500,
    Person? owner,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Car>({
        'kilometers': 500,
      });
    }
    RealmObject.set(this, 'make', make);
    this.model = model;
    this.kilometers = kilometers;
    this.owner = owner;
  }

  Car._();

  @override
  String get make => RealmObject.get<String>(this, 'make') as String;
  @override
  set make(String value) => throw RealmUnsupportedSetError();

  @override
  String? get model => RealmObject.get<String>(this, 'model') as String?;
  @override
  set model(String? value) => RealmObject.set(this, 'model', value);

  @override
  int? get kilometers => RealmObject.get<int>(this, 'kilometers') as int?;
  @override
  set kilometers(int? value) => RealmObject.set(this, 'kilometers', value);

  @override
  Person? get owner => RealmObject.get<Person>(this, 'owner') as Person?;
  @override
  set owner(covariant Person? value) => RealmObject.set(this, 'owner', value);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Car._);
    return const SchemaObject(Car, [
      SchemaProperty('make', RealmPropertyType.string),
      SchemaProperty('model', RealmPropertyType.string, optional: true),
      SchemaProperty('kilometers', RealmPropertyType.int, optional: true),
      SchemaProperty('owner', RealmPropertyType.object,
          optional: true, linkTarget: 'Person'),
    ]);
  }
}

class Person extends _Person with RealmObject {
  static var _defaultsSet = false;

  Person(
    String name, {
    int age = 1,
    Iterable<Car> cars = const [],
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Person>({
        'age': 1,
      });
    }
    this.name = name;
    this.age = age;
    RealmObject.set<List<Car>>(this, 'cars', cars.toList());
  }

  Person._();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  int get age => RealmObject.get<int>(this, 'age') as int;
  @override
  set age(int value) => RealmObject.set(this, 'age', value);

  @override
  List<Car> get cars => RealmObject.get<Car>(this, 'cars') as List<Car>;
  @override
  set cars(covariant List<Car> value) => throw RealmUnsupportedSetError();

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Person._);
    return const SchemaObject(Person, [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('age', RealmPropertyType.int),
      SchemaProperty('cars', RealmPropertyType.object,
          linkTarget: 'Car', collectionType: RealmCollectionType.list),
    ]);
  }
}
