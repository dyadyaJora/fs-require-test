let fs = require('fs');
let prev = (new Date()).getTime();

let x = fs.readFileSync('stub.js');
let curr = (new Date()).getTime();

console.log(curr - prev);
