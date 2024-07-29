let inputboxx=document.querySelector("#inputbox");
let getbtn=document.getElementById("get");
let tempp=document.getElementById("temp");
let descriptionn=document.getElementById("description");
let locationn=document.getElementById("location");
const apikey='717cb702432f76152f6501e5e1a8b0f8';

getbtn.onclick=function(){
if(inputboxx.value==""){
 alert("ENTER THE LOCATION FIRST");
}
else{
let loc=inputboxx.value;
let url=`https://api.openweathermap.org/data/2.5/weather?q=${loc}&appid=${apikey}}`;
fetch(url).then(res=>res.json())
.then(data=>{
console.log(data);


})

}






}








































