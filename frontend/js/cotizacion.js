function Convertir() {
    var valorElemento = document.getElementById("valor");
    var valor = valorElemento.value;
    var valorEnDolarNumerico = parseFloat(valor);
  
    var valorEnPeso = valorEnDolarNumerico * 157.25;
    console.log(valorEnPeso);
    var elementoValorConvertido = document.getElementById("valorConvertido");
    var valorConvertido = "Para comprar esa cantidad de dólares necesita la cantidad de $" + valorEnPeso;
    elementoValorConvertido.innerHTML = valorConvertido;
  }