import 'dart:collection';

void main() {
   print(removeDuplicate([1,2,3,4,4,4,4,5,6,6,6,6])); //sorted array
   print(removeDuplicate([3,4,1,1,3,5,2,4,2,6])); // unsorted array
}

List<int> removeDuplicate(List<int> arr) {
  HashSet<int> uniqueSet = HashSet<int>(); // inisialisasi variabel uniqueSet dengan hashset
  
  for (int i = 0; i < arr.length -1; i++) { // looping array dari index 0 ke index - 1
    if (!uniqueSet.contains(arr[i])) { // check jika array[i] ada didalam varibale uniqueSet
      uniqueSet.add(arr[i]); // jika tidak ada tambah kan array[i] kedalam variable uniqueSet
    }
  }
  
  return uniqueSet.toList(); // return uniqueSet kedalam bentuk list
}