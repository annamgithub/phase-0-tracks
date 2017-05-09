//Release 0 

var colors = ["blue", "green", "yellow", "red"];
var names = ["Ed", "John", "Alison", "Alex"];

colors.push("purple");
names.push("Harry");


//Release 1

var profiles = {}

for (var i = 0; i < names.length; i++) {
  profiles[names[i]] = colors[i];
}

console.log(profiles)


//Release 2

function Cars(type, color, isElectric, mpg) {
  this.type = type;
  this.color = color;
  this.isElectric = isElectric
  this.mpg = mpg;

  this.isItGreen = function () {
    if (this.color == "green" || this.isElectric == true) {
        return "yes"
    } else {
        return "no"
    } 
    console.log(this.color + this.isElectric);
  }
}

var newCar = new Cars("sedan", "red", true, 32);
var newCar2 = new Cars("truck", "blue", false, 32);
var newCar3 = new Cars("jeep", "black", false, 55);

console.log(newCar)
console.log(newCar.isItGreen());
console.log("CAR CREATION COMPLETE!")

console.log(newCar2)
console.log(newCar2.isItGreen());
console.log("CAR CREATION COMPLETE!")

console.log(newCar3)
console.log(newCar3.isItGreen());
console.log("CAR CREATION COMPLETE!")









