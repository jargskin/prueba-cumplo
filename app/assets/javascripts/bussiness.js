function calcular(valor_dolar){
	var valor_dolar = valor_dolar;
	var valor_pesos = document.getElementById('valor_pesos').value;
	document.getElementById('resultado').value = (valor_pesos / valor_dolar).toFixed(5);

	console.log(valor_dolar);
	console.log(valor_pesos);
}