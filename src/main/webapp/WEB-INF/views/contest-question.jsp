<jsp:include page="common.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <html>

    <head>
        <meta charset="utf-8">
        <title>Just Win</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    </head>

    <body>
        <div class="main">
            
            <jsp:include page="header.jsp"></jsp:include>
            
            <div class="gen-top">
                <div class="general-know">
                    <p>GENERAL KNOWLEGE QUIZ</p>
                </div>
                <div class="timer">
                    <p>TIME LEFT</p>
                    <input type="text" class="timer-class" value="4" readonly>
                </div>
            </div>
            <div class="question">
                <div class="queno">
                    <p>Question 1</p>
                </div>
                <div class="ques">
                    <p>'Dandiya' is popular
                        dance of </p>
                </div>
                <div class="radio-but">
                    <p> <input type="radio" name="gender" value="punjab" onclick="show();">Punjab</p><br>
                    <p> <input type="radio" name="gender" value="gujarat" onclick="show();">Gujarat</p><br>
                    <p> <input type="radio" name="gender" value="maharastra" onclick="show();">Maharastra</p><br>
                    <p> <input type="radio" name="gender" value="maharastra"onclick="show();">Maharastra</p>
                </div>
            </div>
            <a href="correct.html">
                <div id="submit" class="submit">
                    <p>Submit</p>
                </div>
            </a>
            
            <jsp:include page="footer.jsp"/>
        
        </div>
       
       <script type="text/javascript" >
			function show(){
			  document.getElementById('submit').style.display = 'block';
			}
		</script>
    
    </body>

    </html>
