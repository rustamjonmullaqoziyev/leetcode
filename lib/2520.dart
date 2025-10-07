int countDigits(int num) {
  int counter = 0;
  int newNum = num;
  while (newNum > 0) {
    int digit = newNum % 10;
    if (num % digit == 0) {
      counter++;
    }
    newNum = newNum ~/ 10;
  }
  return counter;
}
