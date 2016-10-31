// Need to learn how JS actually thinks and functions.
function Longest(array) {
	
	array.sort(function(a, b){return a-b });}

}
console.log(Longest(["hello", "hiya", "how are you"]));


var sample1 = {name: "Din", element: "Fire"}
var sample2 = {name: "Golem", element: "Earth"}
function Check_pair(a, b) {
	if (Object.keys(a).length == Object.keys(b).length) {
		return true}
	else {return false}
}

console.log(Check_pair(sample1, sample2));



//Release 2
// Going to go to office hours to get a better understanding about how JS functions and then going to tackle this one.