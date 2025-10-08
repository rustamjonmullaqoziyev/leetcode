int countSegments(String s) {
  bool isChar = false;
  int counter = 0;
  for (int i = 0; s.length > i; i++) {
    if (s[i] != ' ') {
      isChar = true;
    } else {
      counter += isChar ? 1 : 0;
      isChar = false;
    }
  }
  counter += isChar ? 1 : 0;
  return counter;
}
