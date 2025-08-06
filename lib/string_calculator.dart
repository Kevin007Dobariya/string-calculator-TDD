//create a class StringCalculator for adding numbers
class StringCalculator {
  add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    // handle strings with single number
    return int.parse(numbers);
  }
}
