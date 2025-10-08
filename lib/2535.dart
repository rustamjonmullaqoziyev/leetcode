int differenceOfSum(List<int> nums) {
  int sum = 0;
  int digisSum = 0;
  for (int i = 0; i < nums.length; i++) {
    sum += nums[i];
    int num = nums[i];
    while (num > 0) {
      digisSum += num % 10;
      num = num ~/ 10;
    }
  }
  return sum > digisSum ? sum - digisSum : digisSum - sum;
}
