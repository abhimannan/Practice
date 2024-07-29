<!doctype html>
<html>
<head>
 <title>practice page</title>
<link rel="stylesheet" href="abhi.css">
<script src="abhi.js"></script>
</head>
<body>
<input id="c" type="checkbox" name="programming language">C PROGRAMMING<br>
<input id="html" type="checkbox" name="programming language">HTML<br>
<input id="css" type="checkbox" name="programming language">CSS<br>
<input id="js" type="checkbox" name="programming language">JAVASCRIPT<br>
<input id="py" type="checkbox" name="programming language">PYTHON<br>
<input id="button" type="button" name="button" value="SUBMIT"><br>
<h1 id="result" align="center"></h1>

<script>
 document.getElementById("button").onclick=function(){
let x=document.getElementById("c");
let y=document.getElementById("html");
let z=document.getElementById("css");
let p=document.getElementById("js");
let q=document.getElementById("py");
if(x.checked){
 document.getElementByID("result").innerHTML=`YOUR SELECT C PROGRAMMING LANGUAGE`;
}
else if(y.checked){
 document.getElementByID("result").innerHTML=`YOUR SELECT HTML MARKUP LANGUAGE`;
}
else if(z.checked){
 document.getElementByID("result").innerHTML=`YOUR SELECT CSS `;
}
else if(p.checked){
 document.getElementByID("result").innerHTML=`YOUR SELECT JAVASCRIPT PROGRAMMING LANGUAGE`; 
}
else if(q.checked){
 document.getElementByID("result").innerHTML=`YOUR SELECT PYTHON PROGRAMMING LANGUAGE`;
}
else{
 document.getElementByID("result").innerHTML=`PLEASE SELECT ANY ONE OF THE PROGRAMMING LANGUAGE`;
}

 }













</script>







</body>














</html>