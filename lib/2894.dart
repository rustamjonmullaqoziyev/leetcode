int differenceOfSums(int n, int m) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    i % m == 0 ? sum -= i : sum += i;
  }
  return sum;
}
