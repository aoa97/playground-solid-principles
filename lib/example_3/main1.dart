//* To run this example, use the command: dart run lib/example_3/main1.dart

/* 
  - Example 3: What if a client asked me make the system flexible to accept 
  - E.g. Snake(Animal + Reptile) but animal should swim in the previos example
  - My problem will be about the motion of the animal (swim, walk, fly, etc.)
*/

/*   
  - Approach1: [Behavior-based design] 
    - Segregate those action into interfaces (CanSwim, CanWalk, etc,)

  ✅ Pros – Flexibility:
    These behaviors can be mixed into any type dynamically, allowing for reusable logic 
    regardless of the inheritance hierarchy.

  ❌ Cons – Lack of Inheritance-Based Semantics:
    We lose the ability to express relationships like "AnimalThatCanSwim" in the type system, 
    which may reduce semantic clarity.
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

// Can be an interface or mixin
mixin _CanSwim {
  void swim();
}

mixin _CanWalk {
  void walk();
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

class _Crocodile implements _Animal, _Reptile, _CanSwim, _CanWalk {
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

class _Snake implements _Animal, _Reptile, _CanSwim {
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
