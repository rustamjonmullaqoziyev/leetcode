int scoreOfString(String s) {
  int sum = 0;
  for (int i = 1; i < s.length; i++) {
    int diff = s[i - 1].codeUnitAt(0) - s[i].codeUnitAt(0);
    diff > 0 ? sum += diff : sum -= diff;
  }
  return sum;
}
