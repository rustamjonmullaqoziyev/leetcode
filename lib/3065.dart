int minOperations(List<int> nums, int k) {
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += k > nums[i] ? 1 : 0;
  }
  return sum;
}
