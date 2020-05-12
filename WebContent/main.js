        function getData(url, data) {
            return fetch(url, {
                //body: JSON.stringify(data),
                cache: "no-cache",
                credentials: "same-origin",
                headers: {
                    "user-agent": "Mozilla/4.0 MDN Example",
                    "content-type": "application/json"
                },
                method: "GET", // POST to post data
                mode: "same-origin",
                redirect: "follow",
                referrer: "no-referrer"
            }).then(response => response.json());
        }
        
        function updateSelectOptions(data) {
            let table = document.getElementById("from");

            let selectdd = document.getElementById("select");

            console.log(JSON.stringify(data));
            selectdd.innerHTML = "";
            data[from.value].forEach(element => {
                console.log(element);
                let elements = element.split(".");
                let opt = document.createElement("option");
                opt.value = elements[1];
                opt.innerText = elements[0];
                selectdd.appendChild(opt);
            });

        }
        
        function updateValue1Options() {
            let param1 = document.getElementById("additional1");
           let value1 = document.getElementById("value1");

       if (param1.value == "1,"){
                       for(i=0; i< value1.options.length; i++){
                    	   if (value1.options[i].value.includes("id")){
                    		   value1[i].style.display = "block";
                    	   }
                    	   else {
                    		   value1[i].style.display = "none";
                    	   }
                       }
   }
        }
        function updateValue2Options() {
        	let param2 = document.getElementById("additional2");
        	let value2 = document.getElementById("value2");
        	
        	if (param2.value == "1,") {
        		
        	}
        }
        document.addEventListener("DOMContentLoaded", function () {
        	document.getElementById("textconfirm").style.display = "none";
        	document.getElementById("select").style.display = "none";
        	document.getElementById("additional1").style.display = "none";
        	document.getElementById("fname").style.display = "none";
        	document.getElementById("lname").style.display = "none";
        	document.getElementById("value1").style.display = "none";
        	document.getElementById("additional2").style.display = "none";
        	document.getElementById("value2").style.display = "none";
        	let fname = document.getElementById("fname");
        	let lname = document.getElementById("lname");
        	let textConfirm = document.getElementById("textconfirm");
        	let select = document.getElementById("select");
        	let from = document.getElementById("from");
        	let additional1 = document.getElementById("additional1");
        	let value1 = document.getElementById("value1");
        	let additional2 = document.getElementById("additional2");
        	let value2 = document.getElementById("value2");
        	let run = document.getElementById("run");
        	let selectString = select.value;
        	let fromString = from.value;
        	
        	console.log(run.value);
        	console.log(from.value);
        	console.log(select.value);
        	
    		from.addEventListener("change", function() {
    			console.log(from.value);
    			document.getElementById("select").style.display = "inline";
    			//getData("json/selectoptions", from.value).then(data => updateSelectOptions(data));
    		})
    		select.addEventListener("change", function() {
    			console.log(select.value);
    			document.getElementById("additional1").style.display = "inline";
    			run.value = "BUILD,"+ select.value + from.value + additional1.value + value1.value + additional2.value + value2.value;
    			console.log(run.value);
    		})
    		additional1.addEventListener("change", function(){
    			if (additional1.value == "2,") {
    				document.getElementById("fname").style.display = "inline";
    				document.getElementById("textconfirm").style.display = "inline";
    			} else if (additional1.value == "3,") {
    				document.getElementById("lname").style.display = "inline";
    				document.getElementById("textconfirm").style.display = "inline";
    			} else {
    			updateValue1Options();
    			document.getElementById("value1").style.display = "inline";
    			}
    		})
    		textConfirm.addEventListener("click", function() {
    			console.log(lname.value);
    			console.log(fname.value);
    			run.value = "BUILD,"+ select.value + from.value + additional1.value + value1.value + additional2.value + value2.value;
    			console.log(run.value);
    			document.getElementById("textconfirm").style.display = "none";
    			document.getElementById("additional2").style.display = "inline";
    			
    		})
    		
    		
    		value1.addEventListener("change", function() {
    			document.getElementById("additional2").style.display = "inline";
    			run.value = "BUILD,"+ select.value + from.value + additional1.value + value1.value + additional2.value + value2.value;
    			console.log(run.value);
    		})
    		additional2.addEventListener("change", function(){
    			document.getElementById("value2").style.display - "inline";
    			run.value = "BUILD,"+ select.value + from.value + additional1.value + value1.value + additional2.value + value2.value;
    			console.log(run.value);
    		})
        })
        
    		
    		
