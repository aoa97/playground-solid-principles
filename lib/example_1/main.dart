//* To run this example, use the command: dart run lib/example_1/main.dart

// ISP Statement: No client should be forced to depend on methods it does not use.

/* 
  - Example 1: If a client asked as to create a system that accepts just Shark & Tuna fishes
  - Tuna -> (eat, swim, moveFins) | Shark -> (eat, swim, moveFins)
  - Solution: Create an interface IFish with methods (eat, swim, moveFins) and implement it in both Tuna and Shark 
*/

main() {
  _Tuna()
    ..eat()
    ..swim()
    ..moveFins();

  _Shark()
    ..eat()
    ..swim()
    ..moveFins();
}

abstract class _IFish {
  void eat();
  void swim();
  void moveFins();
}

class _Tuna implements _IFish {
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

class _Shark implements _IFish {
  @override
  void eat() {
    print("Shark is eating");
  }

  @override
  void swim() {
    print("Shark is swimming");
  }

  @override
  void moveFins() {
    print("Shark is moving fins");
  }
}
