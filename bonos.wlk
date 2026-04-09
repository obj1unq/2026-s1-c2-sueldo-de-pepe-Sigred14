// bono por resultados por porcentaje
object bonoPorcentaje {
	method monto(empleado, porcentajeDeBono) { return empleado.sueldoNeto() * 10 / 100 }
}


// bono por resultados de monto fijo
object bonoMontoFijo {
	
	method monto(empleado){
		return 800
	}
}


// agregar bonos por presentismo  
object bonoPresentismoNormal {
//* _Normal_: $2000 pesos si la persona a quien se aplica no faltó nunca, $1000 si faltó sólo un día, $0 en cualquier otro caso.  
	method monto(empleado){
		if (empleado.cantidadDeFaltas() == 0){
			return 2000
		}else if(empleado.cantidadDeFaltas() == 1){ 
			return 1000
		}else{
			return 0
		} 
	}
}
	

object bonoPresentismoAjuste {	
// * _Ajuste_: $100 pesos si el empleado no faltón nunca, $0 en cualquier otro caso.
	method monto(empleado){
	
	if (empleado.cantidadDeFaltas() == 0) {
		return 100
	} else {
		return 0
	}}
}
object bonoPresentismoDemagogico {
//* _Demagógico_: $500 pesos si el neto es menor a 18000, $300 en caso contrario. Para este bono no importa cuántas veces faltó el emplado.
method monto(empleado) {
	if (empleado.sueldoNeto() < 18000) {
		return 500
	} else {
		return 300
}}
}



/*
 * Bono nulo: sirve para resultados y para presentismo, cuando el importe es 0 
 * (o "nada")
 */

object bonoNulo {
	method monto(empleado) { return 0 } 
}

