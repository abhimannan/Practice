
const inputbox=document.getElementById("tasks");
const listcontainer=document.getElementById("list");
let btn=document.getElementById("add");
btn.onclick=function(){
if(inputbox.value==''){
 alert("Enter The Task");
}
else{
let li=document.createElement("li");
li.innerHTML=inputbox.value;
listcontainer.appendChild(li);
let span=document.createElement("span");
span.innerHTML="\u00d7";
li.appendChild(span);
}
inputbox.value='';
savedata();
}
// to save the data permenently after refreshing or close the browser
function savedata(){
localStorage.setItem("data",listcontainer.innerHTML);
}
function showtask(){
 listcontainer.innerHTML=localStorage.getItem("data");
}
showtask();

