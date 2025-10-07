int sumIndicesWithKSetBits(List<int> nums, int k) {
  int sum =0;
  for(int i =0; i< nums.length; i++){
    int num =nums[i];
    int ikki =i.toRadixString(2).replaceAll('0', '').length;
    if(ikki ==k){
      sum+=num;
    }
  }
  return sum;
}