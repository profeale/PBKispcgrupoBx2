function Convertir() {
    var valorElemento = document.getElementById("valor");
    var valor = valorElemento.value;
    var valorEnDolarNumerico = parseFloat(valor);
  
    var valorEnPeso = valorEnDolarNumerico * 157.25;
    console.log(valorEnPeso);
    var elementoValorConvertido = document.getElementById("valorConvertido");
    var valorConvertido = "El resultado en pesos del dolar venta es $" + valorEnPeso;
    elementoValorConvertido.innerHTML = valorConvertido;
  }