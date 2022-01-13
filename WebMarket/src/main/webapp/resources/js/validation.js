function checkAddProduct() {
	//var productId = document.getElementByName("productId");
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	// 상품아아디 체크
	if (!check(/^P[0-9]{4,11}$/, productId,
			"[상품 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
		return false;
		
	// 상품명 체크
	if (name.value.length < 4 || name.value.length > 12) {
		alert('상품명8888은 4~12자 이내로 입력 가능합니다.');
		name.select();
		name.focus();
		return false;
	}
	
	// 상품가격 숫자 및 길이 체크
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert('가격란에는 숫자만 입력하세요.');
	}
	// 상품가격 음수 체크
	if (unitPrice.value < 0) {
		alert('가격란에는 음수는 입력할 수 없습니다.');
	}
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value) || unitPrice.value < 0) {
		unitPrice.select();
		unitPrice.focus();
		return false;		
	}
	
	// 재고수 체크
	if (isNaN(unitsInStock.value)) {
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	return true;
}	

function check(regExp, e, msg) {
	if (regExp.test(e.value)) {
		return true;
	}
	alert(msg);
	e.select();
	e.focus();
	return false;
}
