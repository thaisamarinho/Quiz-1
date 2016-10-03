// 3. Given a JavaScript object that looks like this:
// var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};
// Write a piece of code that loops through the object and prints the following to the console: BC has 3 main cities AB has 2 main cities


var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

for (province in majorCities) {

  if (Array.isArray(majorCities[province])) {
  console.log(province + " has " + (majorCities[province].length) + " main cities");
  } else {
    console.log(province + " has " + 1 + " main city");
  };

};
