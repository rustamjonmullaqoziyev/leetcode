import 'dart:math';

List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  int max = candies[0];
  for (int i = 0; i < candies.length; i++) {
    if (max < candies[i]) {
      max = candies[i];
    }
  }
  List<bool> bools = [];
  for (int element in candies) {
    bools.add(max <= element + extraCandies);
  }
  return bools;
}
