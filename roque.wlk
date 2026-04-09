import categorias.*
import bonos.*

object roque{
    var bonoResultado = bonoNulo
    var bonoPresentismo = bonoNulo
    var cantidadDeFaltas = 0

    method cantidadDeFaltas() { return cantidadDeFaltas }
    method sueldoNeto(){return 28000}

    method sueldo(){

        return self.sueldoNeto() + bonoResultado.monto(self) + 9000 
    } 

method setBonoResultado(_bono) {
    bonoResultado = _bono
}

method setBonoPresentismo(_bono) {
    bonoPresentismo = _bono
}

// cambiar la cantidad de faltas
method setCantidadDeFaltas(_faltas) {
    cantidadDeFaltas = _faltas
}

}