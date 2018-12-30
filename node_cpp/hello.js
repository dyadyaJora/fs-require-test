let prev = (new Date()).getTime();
let x = require('./build/Release/addon');
console.log(+x.add("0.2", "0.1"));
let curr = (new Date()).getTime();

console.log(curr - prev);

