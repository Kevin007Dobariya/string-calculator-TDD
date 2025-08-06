//create a class StringCalculator for adding numbers
class StringCalculator {
  add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    // clean the input string
    numbers = numbers.replaceAll('\n', ',');
    // handle strings with and comma as delimiters
    List<String> parsedNumbers = numbers.split(',');
    parsedNumbers.removeWhere((item) => item.isEmpty);
    int sum = 0;
    for (String number in parsedNumbers) {
      sum += int.parse(number);
    }
    return sum;
  }
}
