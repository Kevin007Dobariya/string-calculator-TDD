//create a class StringCalculator for adding numbers
class StringCalculator {
   add(String numbers) {
    try {
      int number = int.parse(numbers);
      return number;
    } catch (e) {
      print(e);
    }
  }
}
