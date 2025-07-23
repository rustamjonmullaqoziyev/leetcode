String convertDateToBinary(String date) {
  int n1 = int.tryParse(date.substring(0, 4)) ?? 0;
  int n2 = int.tryParse(date.substring(5, 7)) ?? 0;
  int n3 = int.tryParse(date.substring(8, 10)) ?? 0;
  return "${n1.toRadixString(2)}-${n2.toRadixString(2)}-${n3.toRadixString(2)}";
}
