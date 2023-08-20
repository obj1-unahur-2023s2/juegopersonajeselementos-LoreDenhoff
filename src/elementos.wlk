import armas.*

object castillo{
	var defensa = 150
	
	method defensa() {return defensa}
	method altura() = 20
	method recibirAtaque(valor) = (defensa-= valor)
	method recibirTrabajo() {
		defensa = 200.min(defensa + 20)
	}
	method otorgarUnidades() = defensa * 0.2
}

object aurora{
	var estaViva = true
	
	method estaViva() = estaViva
	method altura() = 1
	method recibirAtaque (unArma){
		estaViva = (unArma.potencia() < 10 && self.estaViva())
    }
    method recibirTrabajo() {}
	method otorgarUnidades() = 15

}

object tipa{
	var altura = 8

	method altura(unaAltura) = (altura = unaAltura)
	method altura() {return altura}
	method recibirAtaque(valor){}
	method recibirTrabajo() {
		altura++
	}
	method otorgarUnidades() = altura * 2
	
}
