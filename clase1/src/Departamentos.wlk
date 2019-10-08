import Artefactos.*

class Departamento 
 {
 	var property superficie 
 	var property cantHabitaciones 
 	var property barrio 
 	var property artefactos = []
 	
 	method espacioso ()
 	{
 		if (self.cantHabitaciones()<=2)
 		return (self.superficie() > 45)
 		else
 		return (self.superficie()>75)
 	}
 	
	method consumoElectrico ()
 	{
 		return (cantHabitaciones*300 + ((artefactos.map({artefacto=>artefacto.consumo()})).sum()))  
 	}		
 	
 	method accesorioMasAlto ()
 	{
 		return (artefactos.max({artefacto=>artefacto.altura()}))		
 	}
 	
 	method tieneCalefaccion ()
 	{
 		return (artefactos.any({artefacto=>artefacto.calor()}))
 	}
 	
 	method cantidadArtefactosAltoConsumo()
 	{
 		return ((artefactos.filter({artefacto=>artefacto.altoConsumo()})).size())
 	}
 	method artefactosAltoConsumo ()
 	{
 		return (artefactos.filter({artefacto=>artefacto.altoConsumo()}))
 	}
 	method familiar()
 	{
 		return cantHabitaciones>=3
 	}
 }
 
const deptoUno = new Departamento (superficie = 120, cantHabitaciones=5, barrio = "Hurlingham", artefactos = [estufaDeCuarzo, aireUno,mesaUno])
const deptoDos = new Departamento (superficie = 50, cantHabitaciones = 2, barrio = "Villa Tesei", artefactos = [aireDos, mesaDos])
const deptoTres = new Departamento (superficie = 60, cantHabitaciones = 4, barrio = "Villa Tesei", artefactos = [aireTres, mesaTres])