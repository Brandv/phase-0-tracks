/*
Create reverse function with one parameter.
create reverse_string variable of an empty string.
loop through each index of the arugment. 
	begin at i = argument.length-1.
	run loop while loop varible i is not less than 0 (what is 'i' called?)
	add argument at index i to reverse_string variable. (is this different from concatenation?)
	decrement 1.
log reverse_string to console.
*/

function reverse(str) {
	var reverse_string = "";
	for (var i = str.length - 1; !(i < 0); i--) {
		reverse_string += str[i];

	}
	if (str.length > 4) {
	console.log(reverse_string);}
	return reverse_string
}
var reversed_strings = []
reversed_strings.push(reverse("hello"));
reverse("hi")
reverse("okiedokie")
console.log(reversed_strings);