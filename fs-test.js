let fs = require('fs');
let prev = (new Date()).getTime();

let x = fs.readFileSync('stub');
let curr = (new Date()).getTime();

console.log(curr - prev);
