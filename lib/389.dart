String findTheDifference(String s, String t) {
  Map<String, int> myHash = {};
  int i = 0, j = 0;
  while (s.length > i && t.length > j) {
    if (myHash.containsKey(s[i])) {
      myHash[s[i]] = myHash[s[i]]! + 1;
    } else {
      myHash.addAll({s[i]: 1});
    }
    if (myHash[s[i]] == 0) {
      myHash.remove(s[i]);
    }
    i++;

    if (myHash.containsKey(t[j])) {
      myHash[t[j]] = myHash[t[j]]! - 1;
    } else {
      myHash.addAll({t[j]: -1});
    }
    if (myHash[t[j]] == 0) {
      myHash.remove(t[j]);
    }
    j++;
  }
  while (s.length > i) {
    if (myHash.containsKey(s[i])) {
      myHash[s[i]] = myHash[s[i]]! + 1;
    } else {
      myHash.addAll({s[i]: 1});
    }
    if (myHash[s[i]] == 0) {
      myHash.remove(s[i]);
    }
    i++;
  }
  while (t.length > j) {
    if (myHash.containsKey(t[j])) {
      myHash[t[j]] = myHash[t[j]]! - 1;
    } else {
      myHash.addAll({t[j]: -1});
    }
    if (myHash[t[j]] == 0) {
      myHash.remove(t[j]);
    }
    j++;
  }
  return myHash.keys.join('');
}