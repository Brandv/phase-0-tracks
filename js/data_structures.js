var color = ["green", "white", "orange", "purple"]
var names = ["Ed", "Izzo", "Dantonio", "Sparty"]

color.push("silver")
names.push("Cousins")

var horses = {};

for (var i = 0; i < color.length; i++) {
	horses[color[i]] = names[i];
}
console.log(horses)
