int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
  int sum = 0;
  for (int element in hours) {
    if (target < element) {
      sum += element - target;
    }
  }
  return sum;
}
