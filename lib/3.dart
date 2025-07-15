import 'dart:math';

int lengthOfLongestSubstring(String s) {
  int left = 0;
  int maxLength = 0;
  String subString = "";
  print("s =$s");
  for (int i = 0; i < s.length; i++) {
    maxLength = max(maxLength, subString.length);
    if (subString.contains(s[i])) {
      left = s.lastIndexOf(s[i], left + 1);
      subString = s.substring(left, i + 1);
      print("true substring=$subString");
    } else {
      subString = s.substring(left, i + 1);
      print("false substring=$subString");
    }
  }
  return maxLength;
}
