<br><b>Instructions</b>: Click on the buttons below to display the instruction.<br><br>

<div class="tab">
	<button class="tablinks" onclick="displayInstruction(event, 'case1')">Case
		1</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case2')">Case
		2</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case3')">Case
		3</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case4')">Case
		4</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case5')">Case
		5</button>
	<button class="tablinks" onclick="displayInstruction(event, 'case6')">Case
		6</button>
</div>

<div id="case1" class="tabcontent">
	<b>POST Request & Content-Type: application/json (error)</b>
	
		<li>Request is pre-flighted i.e. browser sends OPTIONS request
			before actual request.</li>
		<li>Origin is set to http://localhost:8080 in Request Headers.</li>
		<li>Custom header Access-Control-Request-Headers: content-type in
			Request Headers</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in
			Response Headers</li>
		<li>CORS error in Console tab: Access-Control-Allow-Headers
			absent from Response Headers.</li>
	
</div>

<div id="case2" class="tabcontent">
	<b>POST Request & Content-Type: application/json (success)</b>
	
		<li>Request is pre-flighted i.e. browser sends OPTIONS request
			before actual request.</li>
		<li>Origin is set to http://localhost:8080 in Request Headers.</li>
		<li>Custom Access-Control-Request-Headers: content-type in
			Request Headers</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in
			Response Headers</li>
		<li>Access-Control-Allow-Headers: content-type in Response
			Headers.</li>
		<li>Request Method: POST in General.</li>
		<li>Response displayed in 'Cross Origin Response:'.</li>
</div>


<div id="case3" class="tabcontent">
	<b>PUT Request (error)</b>
	
		<li>Request is pre-flighted i.e. browser sends OPTIONS request
			before actual request.</li>
		<li>Origin is set to http://localhost:8080 in Request Headers.</li>
		<li>Access-Control-Request-Method: PUT in Request Headers</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in
			Response Headers</li>
		<li>CORS error in Console tab: Access-Control-Allow-Methods
			absent from Response Headers.</li>
	
</div>

<div id="case4" class="tabcontent">
	<b>PUT Request (success)</b>
	
		<li>Request is pre-flighted i.e. browser sends OPTIONS request
			before actual request.</li>
		<li>Origin is set to http://localhost:8080 in Request Headers.</li>
		<li>Access-Control-Request-Method: PUT in Request Headers.</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in
			Response Headers.</li>
		<li>Access-Control-Allow-Methods: PUT in Response Headers.</li>
		<li>Request Method: POST in General.</li>
		<li>Response displayed in 'Cross Origin Response:'.</li>
	
</div>

<div id="case5" class="tabcontent">
	<b>POST Request with Credentials (error)</b>
	
		<li>Request is pre-flighted i.e. browser sends OPTIONS request
			before actual request.</li>
		<li>Origin is set to http://localhost:8080 in Request Headers.</li>
		<li>Access-Control-Request-Headers: content-type in Request
			Headers.</li>
		<li>Access-Control-Allow-Headers: content-type in Response
			Headers.</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in
			Response Headers</li>
		<li>CORS error in Console tab: Access-Control-Allow-Credentials
			absent from Response Headers.</li>
	
</div>

<div id="case6" class="tabcontent">
	<b>POST Request with Credentials (success)</b>
	
		<li>Request is pre-flighted i.e. browser sends OPTIONS request
			before actual request.</li>
		<li>Origin is set to http://localhost:8080 in Request Headers.</li>
		<li>Access-Control-Request-Headers: content-type in Request
			Headers.</li>
		<li>Access-Control-Allow-Headers: content-type in Response
			Headers</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in
			Response Headers</li>
		<li>Access-Control-Allow-Credentials: true in Response Headers</li>

		<li>Response displayed in 'Cross Origin Response:'.</li>
	
</div>

<script>
	function displayInstruction(evt, testCase) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(testCase).style.display = "block";
		evt.currentTarget.className += " active";
	}
</script>