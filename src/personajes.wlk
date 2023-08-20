import elementos.*
import armas.*

object floki{
	var arma
	
	method arma(unArma){arma=unArma}
	method encontrar (unElemento){
		if(arma.estaCargada()){
			unElemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}

object mario{
	var cantidadRecoletada = 0
	var ultimoElemento
	
	method cantidadRecolectada()= cantidadRecoletada
	method encontrar(unElemento) {
		unElemento.recibirTrabajo()
		cantidadRecoletada += unElemento.otorgarUnidades()
		ultimoElemento = unElemento
	}
	method esFeliz() = (self.cantidadRecolectada()>=50 || ultimoElemento.altura()>10)
}

object luisa{
	var personajeActivo
	
	method personajeActivo(unPersonaje){
		personajeActivo = unPersonaje
	}
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	}
}








