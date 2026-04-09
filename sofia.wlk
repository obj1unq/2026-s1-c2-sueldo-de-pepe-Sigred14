import categorias.*
import bonos.*

object sofia{

    var categoria = cadete
	var bonoResultado = bonoNulo
	
	method sueldoNeto() { return categoria.neto() + categoria.neto() * 30 / 100 }

	method sueldo() {
		//neto + bono x resultados  
		return self.sueldoNeto() + bonoResultado.monto(self)

        //si sale bono por porcentaje  el aumento es del 30%
	}

    }