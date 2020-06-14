<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<link href="<c:url value="/resources/css/board.css"/>" rel="stylesheet">
<meta charset="UTF-8">

</head>
<body>
<div id="content">
	<div id="main-container">
		결제정보
		
		<h5 align="center">주문번호${order.ORDERS_NUM}</h5>
		<h1 align="center">주문과 결제가 성공적으로 완료되었습니다.</h1>
		<h3 align="center">업체(브랜드)의 주문 확인 후 발송됩니다.</h3>
		<table border="1" height="100" class="tbl_type">
				<tr>
					<th style="width: 16.6667%;">상품 정보</th>
					<th style="width: 16.6667%;">상품브랜드</th>
					<th style="width: 16.6667%;">주문 일자</th>
					<th style="width: 16.6667%;">주문 번호</th>
					<th style="width: 16.6667%;">주문금액(수량)</th>
					<th style="width: 16.6667%;">배송비</th>
					<th style="width: 16.6667%;">최종 결제금액</th>
				</tr>
				<tr>
					<td style="width: 16.6667%;">${orderG.GOODS_TITLE}</td>
					<td style="width: 16.6667%;">${orderG.ORDER_TIME}</td>
					<td style="width: 16.6667%;">${orderG.GOODS_NUM}</td>
					<td style="width: 16.6667%;">${orderG.GOODS_PRICE}</td>
					<td style="width: 16.6667%;">${order.ORDERS_TCOST}</td>
				</tr>
				<tr>
					<th>
						이름
					</th>
					<th>
						휴대전화
					</th>
					<th colspan="2">
						배송주소
					</th>
				</tr>
				<tr>
					<td>
						<input type="text" id="MEM_ID" name="MEM_ID" value="${orderM.MEM_NAME}">
					</td>
					<td>
						<input type="text" id="MEM_PHONE" name="MEM_PHONE" value="${orderM.MEM_PHONE}">
					</td>
				
					<td>주소 
						<input type="button" id="searchAddr" name="searchAddr" ><br/>
						<input type="text" id="ADD1" name="ADD1" size="50" value="${order.ORDERS_DADD1}"> 
					</td>	
					<td>상세주소 
						<input type="button" id="searchAddr" name="searchAddr" ><br/>
						<input type="text" id="ADD2" name="ADD2" size="50" value="${order.ORDERS_DADD2}">
					</td>
				</tr>
				<tr>
					<th>
						배송 메모
					</th>
				</tr>
				<tr>
					<td>
						<textarea cols="180" rows="10" id="DMEMO" name="DMEMO">${order.ORDERS_DMEMO }</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="5">
					</td>
					<th>
						결제수단
					</th>
					<td align="left">
						카카오페이 <input type="radio" id="ORDER_PAY" name="ORDER_PAY" value="kakaopay" checked="checked">
					</td>
				</tr>
		</table>
		<p align="center">
			<input type="button" id="main" name="main" value="메인으로">
			<input type="button" id="list" name="list" value="주문내역">
		</p>
	</div>
</div>
<script type="text/javascript">
function noEvent() { // 새로 고침 방지 적용
    if (event.keyCode == 116) {
        alert("새로고침을 할 수 없습니다.");
        event.keyCode = 2;
        return false;
    } else if (event.ctrlKey
            && (event.keyCode == 78 || event.keyCode == 82)) {
        return false;
    }
}
document.onkeydown = noEvent;

$(document).ready(function(){
	$("#list").on("click", function(e){ //목록으로 버튼
		e.preventDefault();
		fn_openGoodsList();
	});
	
	$("#main").on("click", function(e){ //수정하기 버튼
		e.preventDefault();
		fn_goMain();
	});
	
});

function fn_openGoodsList(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/myshop' />");
	comSubmit.submit();
}

function fn_goMain(){
	var comSubmit = new ComSubmit();
	comSubmit.setUrl("<c:url value='/main' />");
	comSubmit.submit();
}
</script>
</body>
</html>