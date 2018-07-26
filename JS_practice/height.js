var name = "Andrew B. Sobczak";

var inches = prompt("Please enter you height in");

var weight = prompt("Please enter your weight in lbs");

var name2 = prompt("What is your true name?")

var heightcentimeteres =  (inches * 2.54);

var weightkilograms = (weight * 0.45);

function greeting(name2) {
    console.log("Hello " + name2);
};

console.log("hello my name is " + name + " I am " + Math.round(heightcentimeteres) + " centimeters tall and " + weightkilograms + " kilograms in weight.");

greeting(name2);