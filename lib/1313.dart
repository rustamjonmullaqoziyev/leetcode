List<int> decompressRLElist(List<int> nums) {
  List<int> newNums = [];

  for (int i = 0; i < nums.length; i += 2) {
    int frequency = nums[i];
    int value = nums[i + 1];
    for (int j = 0; j < frequency; j++) {
      newNums.add(value);
    }
  }

  return newNums;
}
