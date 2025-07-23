List<int> getSneakyNumbers(List<int> nums) {
  Set<int> sets ={};
  List<int> myNums =[];
  for(int element in nums){
    int firstLength =sets.length;
    sets.add(element);
    int secondLength =sets.length;
    if(firstLength==secondLength){
      myNums.add(element);
    }
  }
  return myNums;
  // Map<int,int> numss ={};
  // List<int> numsDuoble =[];
  // for(int element in nums){
  //   if(numss.containsKey(element)){
  //     numss[element] =element;
  //   }  else{
  //     if(!(numsDuoble.contains(element))) {
  //       numsDuoble.add(element);
  //     }
  //   }
  // }
  // return numsDuoble;
}