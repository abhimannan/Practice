const hoursel=getElementById("hours");
const minutesel=getElementById("minutes");
const secondsel=getElementById("seconds");
const ampmel=getElementById("ampm");

function updateclock(){
let h=new Date().getHours();
let m=new Date().getMinutes();
let s=new Date().getSeconds();
let ampm="AM";

if(h>12){
h=h-12;
ampm="PM";
}
hoursel.innerText=h;
minutesel.innerText=m;
secondsel.innerText=s;
ampmel,(innerText=ampm);
}
updateclock();