bool isValid(String s) {
  List<String> myStack = [];
  Map<String, String> pair = {")": "(", "}": "{", "]": "["};
  for (int i = 0; i < s.length; i++) {
    if (s[i] == "(" || s[i] == "{" || s[i] == "[") {
      myStack.add(s[i]);
    } else {
      if (myStack.isEmpty) {
        return false;
      } else {
        if (myStack.last == pair[s[i]]) {
          myStack.removeLast();
        } else {
          return false;
        }
      }
    }
  }
  return myStack.isEmpty;
}
