//* To run this example, use the command: dart run lib/example_2/main.dart

/* 
  - Example 2: What if a client asked me to add Reptiles E.g.: Crocodile
  - Crocodile -> (eat, swim, molting) XmoveFins
  - Solution: Segregate -> Create Animal(eat, swim) | Reptile(molting) | Fish(moveFins) interfaces
*/

main() {
  _Tuna()
    ..eat()
    ..swim()
    ..moveFins();

  _Crocodile()
    ..eat()
    ..swim()
    ..walk()
    ..molting();
}

abstract class _Animal {
  void eat();
  void swim();
}

abstract class _Reptile {
  void walk();
  void molting();
}

abstract class _Fish {
  void moveFins();
}

class _Tuna implements _Animal, _Fish {
  @override
  void eat() {
    print("Tuna is eating");
  }

  @override
  void swim() {
    print("Tuna is swimming");
  }

  @override
  void moveFins() {
    print("Tuna is moving fins");
  }
}
// Same for Shark

class _Crocodile implements _Animal, _Reptile {
  @override
  void eat() {
    print("Crocodile is eating");
  }

  @override
  void swim() {
    print("Crocodile is swimming");
  }

  @override
  void walk() {
    print("Crocodile is walking");
  }

  @override
  void molting() {
    print("Crocodile is molting");
  }
}
