void main() {
  print(fibonacci(4)); // 3
}


int fibonacci(int n) {
  if (n <= 1) { // check jika nilai n kurang dari sama dengan 1 maka return n
    return n;
  }
  
  return fibonacci(n-1) + fibonacci(n-2); 
  // misal, n = 4. => 1,1,2 -> 3 
  // maka fibonacci(4-1) + fibonacci(4-2) -> fibonacci (3) + fibonacci(2)
  // (fibonacci(3-1) + fibonacci(3-2)) + (fibonacci(2-1) + fibonacci(2-2)) -> (fibonacci(2) + fibonacci(1)) + (fibonacci(1) + fibonacci(0)) 
  // (fibonacci(2-1) + fibonacci(2-2)) + 1 + 1 + 0
  // 1 + 0 + 1 + 1 + 0 = 3
}