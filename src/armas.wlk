
object ballesta{
	var flechas = 10
	
	method usar() = flechas --
	method estaCargada () = flechas>0
	method potencia() = 4
}

object jabalina{
	var estaCargada = true
	
	method estaCargada(){return estaCargada}
	method usar() = (estaCargada = false)
	method potencia() = 30
} 