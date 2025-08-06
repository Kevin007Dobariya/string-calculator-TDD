import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
 //create instance of StringCalculator
     late StringCalculator calculator;
  group("test add function", () {

    setUp(() {
      calculator = StringCalculator();
    });
    test('should return 0 for an empty string', () {
      // Arrange
      final input = '';
      const expected = 0;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });

    test('should return integer for an single numbered string', () {
      // Arrange
      final input = '1';
      const expected = 1;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });

    test('should return sum of numbers separated by comma as input string', () {
      // Arrange
      final input = '1,2';
      const expected = 3;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });
  
    test('should return sum of numbers separated by comma and containing multiple lines as input string', () {
      // Arrange
      final input = '1,2\n3';
      const expected = 6;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });


    test('should return sum of numbers separated by comma and \n together as part of input string', () {
      // Arrange
      final input = '1,2,\n3';
      const expected = 6;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });
  
  });
}
