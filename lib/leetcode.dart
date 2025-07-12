List<int> twoSum(List<int> nums, int target) {
  Map<int, int> maps = {};
  List<int> result = [];
  for (int i = 0; i < nums.length; i++) {
    if (maps.containsKey(nums[i])) {
      result = [maps[nums[i]] ?? -1, i];
      return result;
    }
    maps.addAll({target - nums[i]: i});
  }
  return result;
}
