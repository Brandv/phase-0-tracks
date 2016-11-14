//console.log("Here we go");


// function roll() {
// 	if q1 = true
// 		document.getElementById("q1")

// }

function blueColor() {
	var q1 = document.getElementById("q1").style.textShadow = "5px 5px 0.5px blue";
}

function greenColor() {
	var q2 = document.getElementById("q2").style.textShadow = "5px 5px 0.5px green";
}

var q1 = document.getElementById("q1").style.textShadow = "5px 5px 0.5px blue";
q1.addEventLister("click", blueColor);

var q2 = document.getElementById("q2").style.textShadow = "5px 5px 0.5px green";
q2.addEventLister("load", greenColor);