import categorias.*
import bonos.*
import pepe.*
import sofia.*
import roque.*
object ernesto{

    //ernesto trabaja con un compañero, que puede cambiar
    var compañero = pepe
    //el sueldo neto de ernesto es el mismo que el de su compañero
    method sueldoNeto() { return compañero.sueldoNeto() }
    
    method sueldo() {
        //el sueldo de ernesto se calcula  neto + bonoPorPresentismo
        //para el bono por presentismo, se usa las misma opciones  que para Pepe. Se sabe que ernesto no falta nunca.
        return compañero.sueldoNeto() + bonoPresentismoNormal.monto(self)

    }

method setCompañero(_compañero) {
    compañero = _compañero 
}

method cantidadDeFaltas(){return 0} 



}