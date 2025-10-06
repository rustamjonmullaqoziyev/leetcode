String truncateSentence(String s, int k) {
  bool isChar = false;
  int i = 0;
  while (k > 0) {
    if (s[i] == ' ') {
      if (isChar) {
        k--;
        isChar = false;
      }
    } else {
      isChar = true;
    }
    i++;
  }
  return s.substring(0, i);
}
