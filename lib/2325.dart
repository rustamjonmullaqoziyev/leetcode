String decodeMessage(String key, String message) {
  List<String> alif = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];
  Map<String, String> myHash = {};
  int j = 0;
  for (int i = 0; i < key.length; i++) {
    if (!myHash.containsKey(key[i])) {
      myHash.addAll({key[i]: alif[j]});
      j++;
    }
  }
  String newMessage = "";
  for (int i = 0; i < message.length; i++) {
    if (message[i] == " ") {
      newMessage += "";
    } else {
      newMessage += myHash[message[i]]!;
    }
  }
  return newMessage;
}
