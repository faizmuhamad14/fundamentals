import 'dart:math';

sealed class Shape{}

class Circle extends Shape{
  final double radius;
  
  Circle(this.radius);
}

class Rectangle extends Shape{
  final double height;
  final double width;
  Rectangle(this.height, this.width);
}

class Triangle extends Shape{
  final double base;
  final double height;
  
  Triangle(this.base, this.height);
}

double area(Shape shape) => switch (shape){
  Circle(radius: final r) => pi * r * r,
  Rectangle(height: final h, width: final w) => h * w,
  Triangle(base: final b, height: final l) => 0.5 * (b * l),
};

void main(){
  print(area(Circle(5)));
  print(area(Rectangle(10,12)));
  print(area(Triangle(24, 30)));
}