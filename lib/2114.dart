int mostWordsFound(List<String> sentences) {
  int max = 0;
  for (int i = 0; i < sentences.length; i++) {
    int subMax = 0;
    bool isChar = false;
    String currentString = sentences[i];
    print("CureentString $currentString");
    int right = 0;
    while (right < currentString.length) {
      if (currentString[right] == ' ') {
        print("right space ${right} and subMax ${subMax}");
        if (isChar) {
          subMax++;
        }
        isChar = false;
      } else {
        print("right char ${right}");
        isChar = true;
      }
      right++;
    }
    if (isChar) {
      subMax++;
    }
    if (subMax > max) max = subMax;
  }
  return max;
}
