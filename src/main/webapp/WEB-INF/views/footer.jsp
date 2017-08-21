
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	
	<c:when test="${footerWithScore == true}">
		<div class="fix-footer">
			<div class="foot-score">
				<p>Score: 0 points</p>
				<span>&copy; One97 LTD.2017. All Rights Reserved.</span>
			</div>
		</div>
	</c:when>
	
	<c:otherwise>
		<div class="footer">
			<p>&copy; One97 LTD.2017. All Rights Reserved.</p>
		</div>
	
	
	
	</c:otherwise>
	
</c:choose>