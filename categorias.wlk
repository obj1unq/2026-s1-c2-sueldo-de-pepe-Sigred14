
object gerente {
	method neto() { return 15000 } 
}

// agregar cadete
object cadete{
	method neto() { return 20000 }
}

object vendedor{

	var muchasVentas = false 

	method neto() {  return	if(muchasVentas){ 16000 * 1.25 }  else { 16000 } }

	//activa el aumento por ventas
	method activarAumentoPorMuchasVentas(){
			muchasVentas = true
		//self.neto() * 25 / 100
	}

	//desactiva el aumento por ventas
	method desactivarAumentoPorMuchasVentas(){
			muchasVentas = false
		//self.neto()
	}

}

object medioTiempo{	

	//Resta la mitad del total neto de una categoria.
	var  categoria = cadete 

	method neto() {
		return categoria.neto() / 2
	}

	method categoriaBase(categoria_){
		categoria = categoria_
	}



	//categoria base 
}