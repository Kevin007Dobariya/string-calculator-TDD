//create a class StringCalculator for adding numbers
class StringCalculator {
  add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    String delimiter = '';

    //find Custom delimiter
    if (numbers.startsWith('//')) {
      delimiter = numbers.substring(2, 3);
    }
      // clean the input string
      numbers = numbers
          .replaceAll('\n', ',')
          .replaceAll(delimiter, ',')
          .replaceAll("//", ',');

      // handle strings with and comma as delimiters
      List<String> parsedNumbers = numbers.split(',');
      // remove empty strings from the list
      parsedNumbers.removeWhere((item) => item.isEmpty);
      int sum = 0;
      for (String number in parsedNumbers) {
        sum += int.parse(number);
      }
      return sum;
    }
  }
