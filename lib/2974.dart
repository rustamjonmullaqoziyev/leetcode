List<int> numberGame(List<int> nums) {
  nums.sort();
  List<int> arr = [];
  while (nums.isNotEmpty) {
    int alice = nums.first;
    nums.removeAt(0);
    if (nums.isEmpty) {
      arr.add(alice);
      continue;
    }
    int bob = nums.first;
    nums.removeAt(0);
    arr.add(bob);
    arr.add(alice);
  }
  return arr;
}
