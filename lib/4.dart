double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  List<int> merged = [];
  int i = 0, j = 0;
  while (i < nums1.length && j < nums2.length) {
    if (nums1[i] < nums2[j]) {
      merged.add(nums1[i]);
      i++;
    } else {
      merged.add(nums2[j]);
      j++;
    }
  }
  while (i < nums1.length) {
    merged.add(nums1[i]);
    i++;
  }
  while (j < nums2.length) {
    merged.add(nums2[j]);
    j++;
  }
  int totalLength = merged.length;
  if (totalLength % 2 == 1) {
    return merged[totalLength ~/ 2].toDouble();
  } else {
    int midIndex = totalLength ~/ 2;
    return (merged[midIndex - 1] + merged[midIndex]) / 2.0;
  }
  // List<int> merged = []
  //   ..addAll(nums1)
  //   ..addAll(nums2);
  // merged.sort();
  // int totalLength = merged.length;
  //
  // if (totalLength % 2 == 1) {
  //   return merged[totalLength ~/ 2].toDouble();
  // } else {
  //   int midIndex = totalLength ~/ 2;
  //   return (merged[midIndex - 1] + merged[midIndex]) / 2.0;
  // }
}