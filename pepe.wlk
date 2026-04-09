import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas() { return cantidadDeFaltas }
	
	method sueldoNeto() { return categoria.neto() }

	method sueldo() {
		//sueldo = neto + bono x resultados + bono x presentismo
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self)
	}
//categoría, bono por presentismo, bono por resultados y cantidad de faltas
method setCategoria(_categoria) {
    categoria = _categoria
}
//cambiar el bono por presentismo
method setBonoPresentismo(_bono) {
    bonoPresentismo = _bono
}
//cambiar el bono por resultados
method setBonoResultado(_bono) {
    bonoResultado = _bono
}
// cambiar la cantidad de faltas
method setCantidadDeFaltas(_faltas) {
    cantidadDeFaltas = _faltas
}	
	
}
