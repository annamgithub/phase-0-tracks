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