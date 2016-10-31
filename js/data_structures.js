var color = ["green", "white", "orange", "purple"]
var names = ["Ed", "Izzo", "Dantonio", "Sparty"]

color.push("silver")
names.push("Cousins")

var horses = {};

for (var i = 0; i < color.length; i++) {
	horses[color[i]] = names[i];
}
console.log(horses)


function Vehicle(type, year, invented){
	this.type = type;
	this.year = year;
	this.invented = invented;
	console.log("check out this sweet ride:", this);
	
		// Need help with this function
	// this.availability = function() {if (this.year <= 2016) {
	// 	this.invented = "available";}
	// 	else {this.invented = "not yet"};
	// }
	// }
}

var hoverboard = {type: "hoverboard", year: 2015, invented: false};
var sky_boots = {type: "Sky boots", year: 2032, invented: false};
console.log(hoverboard);
console.log(sky_boots);
hoverboard.invented = true;
console.log(hoverboard);

// Need to make work
// function Availability() {
// 	if (this.year <= 2016) {
// 		this.invented = true;}
// 		else {this.invented = false;}
// 	};
// 	hoverboard.Availability
//
// Release 3, Q1
for (var key in horses) {
  if (horses.hasOwnProperty(key)) {
    console.log(key + " -> " + horses[key]);}
}
// Q2
// Object literals are best for simple objects that don't have behavior. If you need to assign behavior to an object, constructive functions are better, especially if you need to create multiple objects with those behaviors.

