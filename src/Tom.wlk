import Ratones.*

object tom {
	var energia = 80
	var posicion = 0
	
	method velocidad(){
		return 5 + energia/10
	}

	method posicion() = posicion

	method correrA(unRaton){
		energia= 0.max(energia - 0.5*self.velocidad()*(unRaton.posicion()- posicion).abs())  //MODULO
		posicion = unRaton.posicion()
	}
	
	method esMasVeloz(unRaton){
		return self.velocidad() > unRaton.velocidad()
	}

}
