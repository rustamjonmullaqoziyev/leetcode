List<String> findWords(List<String> words) {
  List<String> newWords = [];
  final String keys1 = "qwertyuiop";
  final String keys2 = "asdfghjkl";
  final String keys3 = "zxcvbnm";
  for (int i = 0; i < words.length; i++) {
    if (isValid(keys1, words[i]) ||
        isValid(keys2, words[i]) ||
        isValid(keys3, words[i])) {
      newWords.add(words[i]);
    }
  }
  return newWords;
}

bool isValid(String keys, String str) {
  for (int i = 0; i < str.length; i++) {
    if (!keys.contains(str[i].toLowerCase())) {
      return false;
    }
  }
  return true;
}
