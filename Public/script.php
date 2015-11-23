<script>
function outObj(obj){
    var description = "";
    for(var i in obj){ 
        var property=obj[i]; 
        description+=i+" = "+property+"\n";
    } 
    $.messager.alert('123',description);
}


//日期选择框格式
function timeformatter(date){  
	var y = date.getFullYear();  
	var m = date.getMonth()+1;  
	var d = date.getDate();  
	return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);  
}  
function timeparser(s){  
	if (!s) return new Date();  
	var ss = s.split('-');  
	var y = parseInt(ss[0],10);  
	var m = parseInt(ss[1],10);  
	var d = parseInt(ss[2],10);  
	if (!isNaN(y) && !isNaN(m) && !isNaN(d)){  
		return new Date(y,m-1,d);  
	} else {  
		return new Date();  
	}  
}  

//验证表单
$.extend($.fn.validatebox.defaults.rules, {  
    isFloat: {  
        validator: function(value, param){  
            return value.match(/^-?\d+[\.\d]?\d{0,}$/);
        },  
        message: '请输入正确的数字'  
    },
	isInt: {  
        validator: function(value, param){  
            return value.match(/^-?\d+$/);
        },  
        message: '请输入正确的数字'  
    }
}); 

function stylerIsrejected(val,row,index) {
	if(row.isrejected!='正常') {
		return 'color:red';	
	}
	return 'color:blue';
}

//grid格式
function formatCash(val,row){  
	if(val==null) return null;
	return val+'万元';  	
}



function formatCashYuan(val,row){  
	if(val==null) return null;
	return val+'元';  	
}
function formatMonth(val,row){  
	if(val==null) return null;
	return val+'个月'; 
}
function formatArea(val,row){  
	if(val==null) return null;
	return val+'平方米'; 
}
</script>