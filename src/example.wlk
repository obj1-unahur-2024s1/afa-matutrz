object afa{
	var arcas = 0
	var precioLogistica = 10000000
	var precioEntradas = 10000
	
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
		arcas = arcas + (precioEntradas * (cancha.capacidadDeLaCancha() * jugador.popularidadActual()))
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
}

object mbappe{
	var popularidad = ((self.edadActual() * 2) + self.golesTotalesEnFinales()) * 0.01
	var viaticos = 50000000
	var edad = 25
	var golesEnFinal = 12
	
	method popularidadActual(){
		return popularidad
	}
	
	method edadActual(){
		return edad
	}
	
	method cumple(){
		edad = edad + 1
	}
	
	method golesTotalesEnFinales(){
		return golesEnFinal
	}
	
	method precioViaticos(){
		return viaticos
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