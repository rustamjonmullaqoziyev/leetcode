int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
  int index = 0;
  switch (ruleKey) {
    case "type":
      index = 0;
    case "color":
      index = 1;
    case "name":
      index = 2;
  }
  int counter = 0;
  for (List<String> item in items) {
    if (item[index] == ruleValue) {
      counter++;
    }
  }
  return counter;
}
