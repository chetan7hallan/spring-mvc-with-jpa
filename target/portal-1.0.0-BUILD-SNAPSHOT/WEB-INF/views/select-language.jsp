<jsp:include page="common.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   

<html>

    <head>
        <meta charset="utf-8">
        <title>Just Win</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
        
    </head>

    <body>
        <div class="main">
           
           <jsp:include page="header.jsp"></jsp:include>
           
            <p class="choose">Choose your preferred language</p>
            <div class="english-button" id="english-button">
                <p>English</p>
            </div>
            <span class="line"></span>
            <div class="hindi-button" id="hindi-button">
                <p>Hindi</p>
            </div>
            <a href="contest-question.htm">
                <div class="button">
                    <p>PROCEED</p>
                </div>
            </a>
        
          <jsp:include page="footer.jsp"/>
        
        </div>
        <script type="text/javascript">
$('#english-button').click(function() {
    $('#english-button').css({
        'border': '2px solid Deeppink'
    });
    $('#hindi-button').css({
        'border': 'none'
    });
});

$('#hindi-button').click(function() {
    $('#hindi-button').css({
        'border': '2px solid Deeppink'
    });
    $('#english-button').css({
        'border': 'none'
    });
});

        </script>
    </body>

</html>
