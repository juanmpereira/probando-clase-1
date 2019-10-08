import Departamentos.*

object estufaDeCuarzo 
{
	const property consumo = 700
	const property altura = 60 
	
	method calor() = true
	
	method altoConsumo() = true
}
 
class AireAcondicionado 
{
	var property frigorias = 0 
	var property frioCalor = true 
	
	method consumo ()
	{
		return frigorias/4
	}
	
	method altura() = 40 + (frigorias/100)
	
	method calor () = frioCalor
	
	method altoConsumo()
	{
		return (self.consumo()>400)
	}
}

class Mesa 
{
	var property alturaPatas = 0
	var property bordeLuminoso = true
	
	method consumo()
	{
		if (self.bordeLuminoso())
		return 80
		else 
		return 0
	}
	
	method altura ()
	{
		if(self.bordeLuminoso())
		return alturaPatas+25
		else
		return alturaPatas + 20
	}
	method calor() = false
	
	method altoConsumo()
	{
		return (self.consumo()>400)
	}
}

const aireUno = new AireAcondicionado(frigorias=2400, frioCalor = true)
const aireDos = new AireAcondicionado(frigorias = 3000, frioCalor = false)	
const aireTres = new AireAcondicionado(frigorias = 1000, frioCalor = true)

const mesaUno = new Mesa(alturaPatas = 80, bordeLuminoso = true)
const mesaDos = new Mesa(alturaPatas = 25, bordeLuminoso = false)
const mesaTres = new Mesa (alturaPatas = 75, bordeLuminoso = false)