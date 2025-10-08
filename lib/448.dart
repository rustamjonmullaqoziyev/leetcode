// List<int> findDisappearedNumbers(List<int> nums) {
//   List<int> numsCopy = [...nums];
//   List<int> newNums = [];
//   while (numsCopy.isNotEmpty) {}
//   // for (int i = 1; i <= nums.length; i++) {
//   //   if (!nums.contains(i)) {
//   //     newNums.add(i);
//   //   }
//   // }
//   // return newNums;
// }
List<int> findDisappearedNumbers(List<int> nums) {
  Set<int> newSet = nums.toSet();
  List<int> newNums = [];
  for (int i = 1; i <= nums.length; i++) {
    if (!newSet.contains(i)) {
      newNums.add(i);
    }
  }
  return newNums;
}
