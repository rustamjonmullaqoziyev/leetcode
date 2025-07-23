int subsetXORSum(List<int> nums) {
  int sum = 0;
  int n = nums.length;
  int totalSubsets = 1 << n; // 2^n ta subset bo'ladi

  for (int i = 0; i < totalSubsets; i++) {
    List<int> subset = [];

    for (int j = 0; j < n; j++) {
      if ((i & (1 << j)) != 0) {
        subset.add(nums[j]);
      }
    }
    sum+=xor(subset);
  }
  return sum;
}

int xor(List<int> nums) {
  if (nums.isEmpty) {
    return 0;
  }

  if (nums.length == 1) {
    return nums.first;
  }
  int result = 0;
  for (int i = 0; i < nums.length; i++) {
    if (i == 0) {
      result = nums[i];
    } else
      result = result ^ nums[i];
  }
  return result;
}
