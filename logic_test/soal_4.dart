void main() {
   print(breakTheRecords(9, [10, 5, 20, 20, 4, 5, 2, 25, 1]));
}


(List<int>, List<int>) breakTheRecords(int n, List<int> gameRecord) {
  int maxRecordCount = 0; // inisialisasi max dan min record count
  int minRecordCount = 0;
  
  int maxRecord = gameRecord[0]; // set gamerecord index 0 sebagai max dan min record
  int minRecord = gameRecord[0];
  
  for (int i = 1; i < n; i++) { // looping dari index 1 sampai index kurang dari n
    if (gameRecord[i] > maxRecord) { // check gamerecord ke i lebih besar dari max record
      maxRecord = gameRecord[i]; // ubah max record sebelumnya menjadi gamerecord ke i
      maxRecordCount++; // increment max record count
    } else if (gameRecord[i] < minRecord) { // check game record ke i kurang dari min record
      minRecord = gameRecord[i]; // ubah min record sebelumnya menjadi game record i
      minRecordCount++; // increment min record count
    }
  }
  
  return ([maxRecordCount, minRecordCount], [maxRecord, minRecord]); // return 2 value 
}