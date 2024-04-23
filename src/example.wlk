object afa{
	var arcas = 0
	var precioLogistica = 10000000
	
	method pagarAlquiler(cancha){
		arcas = arcas - cancha.precioDeAlquiler()
	}
	
	method pagarLogistica(){
		arcas = arcas - precioLogistica
	}
	
	method pagarViaticos(jugador){
		arcas = arcas - jugador.precioViaticos()
	}
	
	method venderEntradas(jugador, cancha){
		arcas = arcas + (entradas.precio() * (cancha.capacidadDeLaCancha() * jugador.popularidadActual()))
		}
	
	method jugarPartido(jugador, cancha){
		self.pagarAlquiler(cancha)
		self.pagarViaticos(jugador)
		self.pagarLogistica()
		self.venderEntradas(jugador, cancha)
	}
	
	method estadoDeLasArcas(){
		return arcas
	}
	
}

object entradas {

		var precio = 10000
	
	method precio(){
		return precio
	}
	
	method inflacionDePrecios(){
		precio = precio + (precio * 0.10)
	}
}

//jugadores

object messi{
	
	var popularidad = 0.98
	var viaticos = 50000000
	
	method popularidadActual(){
		return popularidad
	}
	
	method precioViaticos(){
		return viaticos
	}
	
	method opinarDePolitica(){
		popularidad = popularidad - 0.1
	}
}

object ronaldo{
	var popularidad = messi.popularidadActual() / 2
	var viaticos = 45000000
	
	method popularidadActual(){
		return popularidad
	}
	
	method precioViaticos(){
		return viaticos
	}	
	
	method jugarEnLaAntartida(){
		viaticos = viaticos + 2500000
	}
}

object mbappe{
	var viaticos = 40000000
	var edad = 25
	var golesEnFinal = 12

	
	method edadActual(){
		return edad
	}
	
	method cumple(){
		edad = edad + 1
	}
	
	method golesTotalesEnFinales(){
		return golesEnFinal
	}
	
	method popularidadActual() {
		return ((self.edadActual() * 2) + self.golesTotalesEnFinales()) * 0.01
	}
	
	method precioViaticos(){
		return viaticos
	}
}

object dibu{
	var popularidad = messi.popularidadActual() * 0.9
	var viaticos = 30000000
	
	method popularidadActual(){
		return popularidad
	}
	
	method precioViaticos(){
		return viaticos
	}
	
	method publicidadConMostaza(){
		popularidad = popularidad + 0.05
	}
}


//canchas

object bombonera{
	
	var capacidad = 50000
	var alquiler = 50000000
	
	method precioDeAlquiler(){
		return alquiler
	}
	
	method capacidadDeLaCancha(){
		return capacidad
	}
	
}

object monumental{
	var capacidad = 50000
	var alquiler = 55000000
	
	method precioDeAlquiler(){
		return alquiler
	}
	
	method capacidadDeLaCancha(){
		return capacidad
	}
	
	method avanceDeObras(){
		capacidad = capacidad + 2500
	}
}