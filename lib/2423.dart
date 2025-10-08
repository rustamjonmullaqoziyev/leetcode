bool equalFrequency(String word) {
  Map<String, int> myHash = {};
  for (int i = 0; i < word.length; i++) {
    myHash[word[i]] = (myHash[word[i]] ?? 0) + 1;
  }
  return false;
}
