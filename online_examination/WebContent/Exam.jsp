<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css"
	rel="stylesheet" />
<title>home page</title>
<style type="text/css">
a {
	font-family: sans-serif;
	font-style: normal;
	font-weight: bold;
}

img {
	height: 600px;
	width: 400px;
}
body {
  background-image: url('images/bg.jpg');
}
</style>
<script type="text/javascript">
// Function to submit the form automatically
function submitForm() {
    document.getElementById("myForm").submit();
}

// Function to start the timer
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            submitForm(); // Call the function to submit the form
        }
    }, 1000);
}

window.onbeforeunload = function () {
    return "Are you sure you want to leave this page? Your progress will be lost.";
};

// When the page is loaded, start the timer
window.onload = function () {
    var tenMinutes = 60 * 1, // 10 minutes in seconds
        display = document.querySelector('#timer');
    startTimer(tenMinutes, display);
};
</script>

</head>
<body>
		<!-- Navbar -->
		<div class="container">
			
			
			<div class="row mt-4">
			  <p align="center" style="margin-top: 20px; color: red;" > Timer after time out form will auto submit</p> <p align="center" id="timer"></p>
				<div class="col-md-8 offset-md-2">
					<form id="myForm" action="SubmitController" method="post">
						<div class="card mb-3">
							<div class="card-header">Question 1</div>
							<div class="card-body">
								<p>Which keyword is used to declare a variable that can hold a fixed value that cannot be modified?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q1" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) final</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q1" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) static</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q1" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) const</label>
								</div>
								<div class="form-check">
									<input type="radio" id="d" name="q1" value="d"
										class="form-check-input"> <label for="d"
										class="form-check-label">d) immutable</label>
								</div>
							</div>
						</div>
						<div class="card mb-3">
							<div class="card-header">Question 2</div>
							<div class="card-body">
								<p>What is the output of the following code snippet?<br> 
								int x = 5;
									System.out.println(x++ + ++x);
								</p>
								<div class="form-check">
									<input type="radio" id="a" name="q2" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) 10</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q2" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) 11</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q2" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) 12</label>
								</div>
								<div class="form-check">
									<input type="radio" id="d" name="q2" value="d"
										class="form-check-input"> <label for="d"
										class="form-check-label">d) 13</label>
								</div>
							</div>
						</div>
						<div class="card mb-3">
							<div class="card-header">Question 3</div>
							<div class="card-body">
								<p>Which of the following is NOT a valid access modifier in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q3" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) public</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q3" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) private</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q3" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) protected</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q3" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) global</label>
								</div>
							</div>
						</div>
						
						<div class="card mb-3">
							<div class="card-header">Question 4</div>
							<div class="card-body">
								<p>What is the correct way to declare an array in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q4" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) int[] arr = new int[];</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q4" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) int arr[] = new int[];</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q4" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) int[] arr = new int[5];</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q4" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) int arr = new int[5];</label>
								</div>
							</div>
						</div>
						<div class="card mb-3">
							<div class="card-header">Question 5</div>
							<div class="card-body">
								<p>Which keyword is used to explicitly throw an exception in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q5" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) raise</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q5" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) throw</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q5" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) catch</label>
								</div>
								<div class="form-check">
									<input type="radio" id="d" name="q5" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) exception</label>
								</div>
							</div>
						</div>
						
						<div class="card mb-3">
							<div class="card-header">Question 6</div>
							<div class="card-body">
								<p>What is the default value assigned to an uninitialized variable of type int in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q6" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) 0</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q6" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) null</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q6" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) -1</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q6" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) undefined</label>
								</div>
							</div>
						</div>
						
						<div class="card mb-3">
							<div class="card-header">Question 7</div>
							<div class="card-body">
								<p>Which operator is used to perform logical AND in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q7" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) &&</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q7" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) ||</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q7" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) !</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q7" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) &</label>
								</div>
							</div>
						</div>
						
						<div class="card mb-3">
							<div class="card-header">Question 8</div>
							<div class="card-body">
								<p>What is the purpose of the finally block in a try-catch-finally statement?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q8" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) It is executed if an exception is caught in the try block.</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q8" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) It is executed before the try block.</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q8" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) It is executed if an exception is not caught in the try block.</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q8" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) It is executed after the catch block, regardless of whether an exception is caught or not.</label>
								</div>
							</div>
						</div>
						
						<div class="card mb-3">
							<div class="card-header">Question 9</div>
							<div class="card-body">
								<p>Which class is the superclass of all classes in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q9" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) Object</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q9" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) Class</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q9" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) Main</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q9" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) Super</label>
								</div>
							</div>
						</div>
						
						<div class="card mb-3">
							<div class="card-header">Question 10</div>
							<div class="card-body">
								<p>Which method is used to compare two objects for equality in Java?</p>
								<div class="form-check">
									<input type="radio" id="a" name="q10" value="a"
										class="form-check-input"> <label for="a"
										class="form-check-label">a) equals()</label>
								</div>
								<div class="form-check">
									<input type="radio" id="b" name="q10" value="b"
										class="form-check-input"> <label for="b"
										class="form-check-label">b) compareTo()</label>
								</div>
								<div class="form-check">
									<input type="radio" id="c" name="q10" value="c"
										class="form-check-input"> <label for="c"
										class="form-check-label">c) compare()</label>
								</div>
								<div class="form-check">
									<input type="radio" id="D" name="q10" value="d"
										class="form-check-input"> <label for="c"
										class="form-check-label">d) equalsIgnoreCase()</label>
								</div>
							</div>
						</div>
						
						<button type="submit"  class="btn btn-primary">Submit</button>
					</form>
				</div>
				</div>
				</div>
				<!-- Bootstrap CDN -->
				<script src="https: //stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
</body>




<!-- 1. a) final
2. c) 12
3. d) global
4. c) int[] arr = new int[5];
5. b) throw
6. a) 0
7. a) &&
8. a) It is executed if an exception is caught in the try block.
9. a) Object
10. a) equals() -->


</html>