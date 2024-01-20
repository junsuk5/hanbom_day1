void main() {
  Car2 car2 = Car2(ElectronicEngine());

  List<int> nums = [1, 2, 3, 1];


  List<int> results = nums.map((e) => e + 1).toList();
  
  Map<String, dynamic> json = {};

  Set<int> sets = {1, 2, 3, 1};

  Set<Person> people = {
    const Person(name: 'dd', age: 10),
    const Person(name: 'dd', age: 10),
    const Person(name: 'dd', age: 10),
  };


  Iterable<int> iterables = nums;
  Iterable<int> iterable2 = sets;

  Car car = Car();

  // car.name = '똥차';
  print(car.age);

  car.age = 10;

  Person person1 = Person(name: '홍길동', age: 10);
  Person person2 = Person(name: '한석봉', age: 10);

  print(person1.hashCode);
  print(person2.hashCode);
  print(person1 == person2);  // false


  Human human = Human();
}

class Car {
  final String name = '차';
  int _age = 0;

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  // int getAge() {
  //   return _age;
  // }

  GasolinEngine engine = GasolinEngine();


}

class Car2 {
  Engine engine;

  Car2(this.engine);
}

class GasolinEngine implements Engine {
  @override
  void drive() {
    print('부릉');
  }


}

class ElectronicEngine implements Engine {
  @override
  void drive() {
    print('위이잉');
  }
}

abstract interface class Engine {
  void drive();
}

int money = 100;

Person onlyOnePerson = Person(name: 'name', age: 10);

class Person {
  final String name;
  final int age;

  static int money = 100; // const

  static int getMoney() {
    print(name);
    print(age);
    return money;
  }

//<editor-fold desc="Data Methods">
  const Person({
    required this.name,
    required this.age,
  });


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return 'Person{ name: $name, age: $age,}';
  }

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }

  factory Person.fromJson(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

//</editor-fold>
}

class Human {
  // private 생성자
  Human._privateConstructor();

  static Human? _instance;

  // 인스턴스를 반환하는 메서드
  static Human getInstance() {
    if (_instance == null) {
      _instance = new Human._privateConstructor();
    }
    return _instance!;
  }

}