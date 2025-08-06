//create a class StringCalculator for adding numbers
class StringCalculator {
  add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    //find Custom delimiter
    if (numbers.startsWith('//')) {
      String delimiter = numbers.substring(2, 3);
      // clean the input string
      numbers = numbers.replaceAll(delimiter, ',').replaceAll("//", ',');
    }

    // replace \n with ,
    numbers = numbers.replaceAll('\n', ',');
    // handle strings with and comma as delimiters
    List<String> parsedNumbers = numbers.split(',');
    // remove empty strings from the list
    parsedNumbers.removeWhere((item) => item.isEmpty);
    List<int> negatives =
        parsedNumbers.map(int.parse).where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(',')}');
    }
    int sum = 0;
    for (String number in parsedNumbers) {
      sum += int.parse(number);
    }
    return sum;
  }
}
