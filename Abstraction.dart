// Abstract class
abstract class Shape {
  double area();

  void display() {
    print('This is a shape.');
  }
}

// Subclass Circle implementing the abstract method
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

// Subclass Rectangle implementing the abstract method
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Shape circle = Circle(5.0);
  Shape rectangle = Rectangle(4.0, 6.0);

  print('Circle area: ${circle.area()}');
  print('Rectangle area: ${rectangle.area()}');
}
