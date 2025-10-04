List<int> createTargetArray(List<int> nums, List<int> index) {
  List<int> targetArray = [];
  for (int i = 0; i < index.length; i++) {
    if (index[i] == targetArray.length) {
      targetArray.add(nums[i]);
    } else {
      targetArray = [
        ...targetArray.sublist(0, index[i] + 1),
        nums[i],
        ...targetArray.sublist(index[i] + 1),
      ];
    }
  }
  return targetArray;
}
