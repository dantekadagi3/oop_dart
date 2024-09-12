// Superclass
class Animal {
  String name;

  Animal(this.name);

  // Method to be overridden
  void makeSound() {
    print('$name is making a sound.');
  }
}

// Subclass Dog overriding makeSound()
class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('$name is barking.');
  }
}

// Subclass Cat overriding makeSound()
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('$name is meowing.');
  }
}

void main() {
  Animal myDog = Dog('Buddy');
  Animal myCat = Cat('Whiskers');

  myDog.makeSound();  // Outputs: Buddy is barking.
  myCat.makeSound();  // Outputs: Whiskers is meowing.
}
