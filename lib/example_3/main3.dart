//* To run this example, use the command: dart run lib/example_3/main3.dart

/* 
  - Example 3: What if a client asked me make the system flexible to accept 
  - E.g. Snake(Animal + Reptile) but animal should swim in the previos example
  - My problem will be about the motion of the animal (swim, walk, fly, etc.)
*/

/*   
  - Approach3: Mix [Inheritance-Based design] and [Behavior-based design]
    - Create AnimalCanSwim, AnimalCanWalk and both implement CanSwim, CanWal

  ✅ Pros – Flexibility and Inheritance-Based Semantics:
    This approach allows us to express relationships like "AnimalThatCanSwim" in the type system,
    in addition to providing reusable behaviors like CanSwim and CanWalk.

  ❌ Cons – Complexity:
    The combination of inheritance and mixins can lead to more complex type hierarchies, 
    making the code harder to understand and maintain as we add new types.
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

  _Snake()
    ..eat()
    ..swim()
    ..molting();
}

abstract class _Animal {
  void eat();
  void swim();
}

abstract class _Reptile {
  void molting();
}

abstract class _Fish {
  void moveFins();
}

mixin _CanSwim {
  void swim();
}

mixin _CanWalk {
  void walk();
}

abstract class _AnimalCanSwim with _CanSwim {}

abstract class _AnimalCanWalk with _CanWalk {}

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

class _Crocodile implements _Animal, _Reptile, _AnimalCanSwim, _AnimalCanWalk {
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

class _Snake implements _Animal, _Reptile, _AnimalCanSwim {
  @override
  void eat() {
    print("Snake is eating");
  }

  @override
  void swim() {
    print("Snake is swimming");
  }

  @override
  void molting() {
    print("Snake is molting");
  }
}
