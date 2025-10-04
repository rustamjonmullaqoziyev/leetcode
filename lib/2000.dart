String reversePrefix(String word, String ch) {
  String newWord = word;
  for (int i = 0; i < word.length; i++) {
    if (ch == word[i]) {
      newWord = word.substring(0, i + 1);
      newWord = newWord.split('').reversed.join('') + word.substring(i + 1);
      return newWord;
    }
  }
  return newWord;
}
