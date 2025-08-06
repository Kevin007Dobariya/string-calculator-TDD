import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
 //create instance of StringCalculator
      StringCalculator calculator = StringCalculator();
  
    test('should return 0 for an empty string', () {
      // Arrange
      final input = '';
      const expected = 0;

      // Act
      final result = calculator.add(input);

      // Assert
      expect(result, expected);
    });
}
