// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.

var even = function(n) {

var evenNumbers = [];
var i = 2;
while (evenNumbers.length < n) {
  evenNumbers.push(i);
  i += 2;
};
console.log(evenNumbers.join(", "));
};

even(6);
even(7);
even(8);
even(9);
