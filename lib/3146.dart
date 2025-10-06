int findPermutationDifference(String s, String t) {
  Map<String, int> myHash = {};
  int sum = 0;
  for (int i = 0; i < s.length; i++) {
    if (myHash.containsKey(s[i])) {
      int change = myHash[s[i]]!;
      sum += change > i ? change - i : i - change;
    } else {
      myHash[s[i]] = i;
    }

    if (myHash.containsKey(t[i])) {
      int change = myHash[t[i]]!;
      sum += change > i ? change - i : i - change;
    } else {
      myHash[t[i]] = i;
    }
  }
  return sum;
}
