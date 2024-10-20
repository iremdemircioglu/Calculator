// Actor definition
actor Calculator {

  // Variable to hold the current value
  var currentValue: Nat = 0;

  // Function to add two numbers
  public func add(a: Nat, b: Nat): async Nat {
    currentValue := a + b;
    return currentValue;
  };

  // Function to subtract two numbers
  public func subtract(a: Nat, b: Nat): async Nat {
    if (a >= b) {
      currentValue := a - b;
      return currentValue;
    } else {
      currentValue := 0; // Return 0 if b is greater than a to avoid negative numbers
      return currentValue;
    };
  };

  // Function to multiply two numbers
  public func multiply(a: Nat, b: Nat): async Nat {
    currentValue := a * b;
    return currentValue;
  };

  // Function to divide two numbers
  public func divide(a: Nat, b: Nat): async ?Nat {
    if (b == 0) {
      return null; // Return null if dividing by zero
    } else {
      currentValue := a / b;
      return ?currentValue;
    };
  };

  // Function to reset the current value to zero
  public func clean(): async Nat {
    currentValue := 0;
    return currentValue;
  };
};
