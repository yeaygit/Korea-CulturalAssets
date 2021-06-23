/**
 * 
 */
function nightDayHandler(self){
    	var target= document.querySelector('body');
 	if(self.value=='Dark'){
    	target.style.backgroundColor='black';
    	target.style.color='white';
    	self.value='Day';

    	var lst=document.querySelectorAll('a');
    	var i=0;
    	while(i<lst.length){
        	lst[i].style.color='white';
        	i++;
    	}
 	}
	else{
    	target.style.backgroundColor='white';
    	target.style.color='black';
    	self.value='Dark';

    	var lst=document.querySelectorAll('a');
    	var i=0;
    	while(i<lst.length){
        	lst[i].style.color='black';
        	i++;
    	}
	}   
}


