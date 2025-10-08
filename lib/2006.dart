int countKDifference(List<int> nums, int k) {
  int counter = 0;
  for (int i = 0; i < nums.length - 1; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      if ((nums[i] > nums[j] && nums[i] - nums[j] == k) ||
          (nums[j] > nums[i] && nums[j] - nums[i] == k)) {
        counter++;
      }
    }
  }
  return counter;
}
