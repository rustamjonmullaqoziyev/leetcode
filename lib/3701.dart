int alternatingSum(List<int> nums) {
  int totalSum =0;
  for(int i =0; i< nums.length; i++){
    totalSum=totalSum+i%2==0?nums[i]:-nums[i];
  }
  return totalSum;
}