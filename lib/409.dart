int longestPalindrome(String s) {
  Map<String, int> maps = {};
  for (int i = 0; i < s.length; i++) {
    if (maps.containsKey(s[i])) {
      maps[s[i]] = maps[s[i]]! + 1;
    } else {
      maps.addAll({s[i]: 1});
    }
  }
  if (maps.length == 1) {
    return maps.entries.first.value;
  } else {
    int newNum = 0;
    int counter = 0;
    int max = 0;
    for (var map in maps.entries) {
      if (map.value > 0 && map.value % 2 == 0) {
        newNum += map.value;
        counter++;
      } else {
        max = map.value > max ? map.value : max;
      }
    }
    if (counter > 1) {
      return newNum + 1;
    } else {
      return newNum;
    }
  }
}
