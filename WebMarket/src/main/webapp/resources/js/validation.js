function checkAddProduct() {
	//var productId = document.getElementByName("productId");
	var productId = document.getElementById("productId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	// 상품명 체크
	if (name.value.length < 4 || name.value.length > 12) {
		alert('상품명은 4~12자 이내로 입력 가능합니다.');
		name.select();
		name.focus();
		return false;
	}
	// 상품가격체크
	
}	
