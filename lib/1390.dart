int sumFourDivisors(List<int> nums) {
  int totalSum = 0;
  for (int i = 0; i < nums.length; i++) {
    int currentSum = 0;
    int maxDivisors = 0;
    int right = 1;
    while (nums[i] >= right) {
      if (nums[i] % right == 0) {
        currentSum += right;
        maxDivisors++;
      }
      if (maxDivisors > 4) {
        break;
      }
      if (nums[i] % 2 != 0) {
        right += 2;
      } else {
        right++;
      }
    }
    if (maxDivisors == 4) {
      totalSum += currentSum;
    }
  }
  return totalSum;
}
