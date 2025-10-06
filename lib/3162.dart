int numberOfPairs(List<int> nums1, List<int> nums2, int k) {
  int counter = 0;
  for (int i = 0; i < nums1.length; i++) {
    for (int j = 0; i < nums2.length; j++) {
      if (nums1[i] % (nums2[j] * 2) == 0) {
        counter++;
      }
    }
  }
  return counter;
}
