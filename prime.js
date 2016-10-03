// 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.




var prime = function (number) {
  
  var count = 0;

  for (i = 2; i < number; i++) {
    if (number % i !== 0) {
      count++;
    }
  }

  if (typeof(number) !== 'number'){
    console.log("This is not a number");
  } else if (number === 1) {
    console.log(number + " is prime.");
  } else if (count === (number - 2)) {
    console.log(number + " is prime.");
  } else {
    console.log(number + " is not prime.");
  };

};

prime(2);
prime(3);
prime("hello");
prime(5);
prime(6);
prime(7);
prime(8);
prime(11);
prime(15);
prime(1);
