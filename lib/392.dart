bool isSubsequence(String s, String t) {
  int i = 0, j = 0;
  while (s.length > i && t.length > j) {
    bool isFind = false;
    while (t.length > j && !isFind) {
      if (s[i] == t[j]) {
        print("i= ${i} j= ${j}");
        isFind = true;
        i++;
      }
      j++;
    }
  }
  print("result i= ${i}  j =${j} ${s.length - 1 == i}");
  return s.length  == i;
}
