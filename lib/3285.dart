List<int> stableMountains(List<int> height, int threshold) {
  bool isStable = false;
  List<int> stableMountains =[];
  for (int i = 0; i < height.length; i++) {
    if (isStable) {
      stableMountains.add(i);
    }
    if (height[i] > threshold) {
      isStable = true;
    } else {
      isStable = false;
    }
  }
  return stableMountains;
}
