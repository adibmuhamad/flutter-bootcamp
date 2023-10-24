

void main() {
  print(fizzBuzz(0)); // fizzbuzz
  print(fizzBuzz(1)); // 1
  print(fizzBuzz(3)); // fizz
  print(fizzBuzz(5)); // buzz
  print(fizzBuzz(15)); // fizzbuzz
}

String fizzBuzz(int input) {
  String temp = ""; // initialisasi variable string kosong
  
  if (input % 3 == 0) { // jika input habis dibagi 3, append temp dengan fizz
    temp += "fizz";
  }
  
  if (input % 5 == 0) { // jika input habis dibagi 5, append temp dengan buzz
    temp += "buzz";
  }
  
  return temp.isEmpty ? input.toString() : temp; // jika temp kosong print input else print temp
}