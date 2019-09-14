#!/usr/local/bin/node

function lat() {
	return (Math.random() - 0.5) * 90 * 2;
}

function lon() {
	return (Math.random() - 0.5) * 180 * 2;
}

let max = parseInt(process.argv[2]);
for(var i=0; i < max; i++) {
	console.log(`${lat()},${lon()}`);
}
