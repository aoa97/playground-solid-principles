//* To run this example, use the command: dart run lib/example_3/main2.dart

/* 
  - Example 3: What if a client asked me make the system flexible to accept 
  - E.g. Snake(Animal + Reptile) but animal should swim in the previos example
  - My problem will be about the motion of the animal (swim, walk, fly, etc.)
*/

/*   
  - Approach2: [Inheritance-Based design] 
    - Create AnimalCanSwim, AnimalCanWalk, etc.

  ✅ Pros – Easier to express Relationships:
    This approach allows us to express relationships like "AnimalThatCanSwim" in the type system, 
    making it clearer how different types relate to each other.

  ❌ Cons – Lack of Flexibility:
    This limits behaviors like CanSwim or CanWalk to only animals, making it harder to apply 
    the same behavior to other domains (e.g., machines that can swim or walk).
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

abstract class _AnimalCanSwim {
  void swim();
}

abstract class _AnimalCanWalk {
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
