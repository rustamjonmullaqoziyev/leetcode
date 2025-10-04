List<int> getFinalState(List<int> nums, int k, int multiplier) {
  while (k > 0) {
    int index = 0;
    int min = nums[0];
    for (int i = 0; i < nums.length; i++) {
      if (min > nums[i]) {
        min = nums[i];
        index = i;
      }
    }
    nums[index] *= multiplier;
    k--;
  }
  return nums;
}
