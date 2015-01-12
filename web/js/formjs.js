

function numbervalidate(){
    var value=true;
    var number=document.getElementById('inputNumber').value;
    var m=/^[0-9]+$/;
    var len=/^\d{10}$/;  
    if(!number.match(m))
        {
            alert("please enter only number");
            value=false;
            
            
        }
     else if(!number.match(len))
         {
             alert("please enter correct number");
             value=false;
            
         }
    
    return value;
    
    
}

