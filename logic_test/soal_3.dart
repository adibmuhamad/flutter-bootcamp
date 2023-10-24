void main() {
   String case1 = "(())";
   String case2 = "()()";
   String case3 = "()()(";
   String case4 = "(";
  
   print('Bracket case1 -> ${isBracketValidOrNot(case1)}');
   print('Bracket case2 -> ${isBracketValidOrNot(case2)}');
   print('Bracket case3 -> ${isBracketValidOrNot(case3)}');
   print('Bracket case4 -> ${isBracketValidOrNot(case4)}');
}

bool isBracketValidOrNot(String input) {
  Map<String, String> bracketPairs = { // initialisasi Map untuk pair setiap bracket (key:value)
    ')': '(',
    ']': '[',
    '}': '{',
  };

  List<String> openBrackets = []; // buat variable list dari open bracket
  
  for (int i = 0; i < input.length; i++) { // looping input dari index 0 ke index
    String currentBracket = input[i];
    if (bracketPairs.values.contains(currentBracket)) { // check jika current bracket termasuk dari value map dan tambahkan kedalam variable open bracket 
      openBrackets.add(currentBracket);
    } else if (bracketPairs.keys.contains(currentBracket)) { // check jika current bracket termasuk dari key map
      if (openBrackets.isEmpty || openBrackets.last != bracketPairs[currentBracket]) { // jika open bracket kosong atau open bracket terakhir tidak sama dengan pasangan bracket nya dari current bracket maka return false
        return false;
      } else {
        openBrackets.removeLast(); // hapus open bracket index terakhir
      }
    }
  }
  
  return openBrackets.isEmpty; // jika open bracket kosong return true else return false
}