int prefixCount(List<String> words, String pref) {
  int counter = 0;
  for (String item in words) {
    if (item.length > pref.length && pref == item.substring(0, pref.length)) {
      counter++;
    }
  }
  return counter;
}
