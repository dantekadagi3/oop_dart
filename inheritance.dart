// Superclass
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('$name is making a sound.');
  }
}

// Subclass inheriting Animal class
class Dog extends Animal {
  Dog(String name) : super(name);

  void bark() {
    print('$name is barking.');
  }
}

void main() {
  Dog dog = Dog('Rex');
  dog.makeSound();  // Inherited method
  dog.bark();       // Subclass-specific method
}
