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

    test('should return sum when custom delimiter ; is used', () {
      // Arrange
      final input = '//;\n1;2';
      const expected = 3;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });
    
    test('should return sum when custom delimiter | is used', () {
      // Arrange
      final input = '//|\n4|5|6';
      const expected = 15;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });

    test('should return 0 when custom delimiter is defined but no numbers given', () {
      // Arrange
      final input = '//;\n';
      const expected = 0;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });
    test('should throw exception if input contains a single negative number', () {

      expect(
     () => calculator.add('-1,2,3'),
      throwsA(
        predicate((e) =>
        e is Exception &&
        e.toString().contains('negative numbers not allowed: -1')),
      ),
    );

    
    });
    
    test('should throw exception if input contains multiple negative numbers', () {
      // Arrange
      final input = '-1,2,-3,4';

      // Act & Assert
      expect(
        () => calculator.add(input),
        throwsA(
          predicate((e) =>
              e is Exception &&
              e.toString().contains('negative numbers not allowed: -1,-3')),
        ),
      );
    });
    
    test('should throw exception if negative numbers are used with custom delimiter', () {
      // Arrange
      final input = '//;\n1;-2;-3;4';

      // Act & Assert
      expect(
        () => calculator.add(input),
        throwsA(
          predicate((e) =>
              e is Exception &&
              e.toString().contains('negative numbers not allowed: -2,-3')),
        ),
      );
    });
    
  
  
  
  });  
}
