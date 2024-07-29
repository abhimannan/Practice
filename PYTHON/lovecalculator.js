window.onload=function() {
 let button=document.getElementById("button");
 button.addEventListener("click",calculatelove);
}
function calculatelove(){
let yourname=document.getElementById("yourname").value;
let crushname=document.getElementById("crushname").value;

if(yourname!="" && crushname!=""){
 let percentage=Math.floor(Math.random()*101);
 document.getElementById("result").innerHTML=youename +"and"+ crushname +"chance of love";
 document.getElementById("resultpercent").innerHTML=percentage.toString()+"%";
}


}