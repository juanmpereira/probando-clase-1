import Departamentos.*
import Artefactos.*

class Inmobiliaria 
{
	var deptosEnAlquiler = []
	
	method deptosFamiliares()
	{
		return (deptosEnAlquiler.filter({departamento=>departamento.familiar()}))
	}
	method barrioCadaDepto()
	{
		return ((deptosEnAlquiler.map({departamento=>departamento.barrio()})).asSet())
	}
	method toleraInvierno()
	{
		return (deptosEnAlquiler.any({departamento=>departamento.tieneCalefaccion()}))
	}
	method puedeCertificarBajoConsumo(cantidad)
	{
		return (deptosEnAlquiler.all({departamento=>departamento.consumoElectrico() <= cantidad}))
	}
	method barrioDelDeptoMasGrande ()
	{
		return (deptosEnAlquiler.max({departamento=>departamento.superficie()})).barrio()	
	}
	method cantidadDeptosConMas2Artefactos()
	{
		return (deptosEnAlquiler.filter({departamento=>departamento.artefactos().size()>2})).size()
	}
	method consumoTotalDeptosCompactos()
	{
		return (deptosEnAlquiler.filter({departamento=>departamento.superficie()<70})).map({departamento=>departamento.consumoElectrico()}).sum()
	}
	method deptosCompatibles(depto1)
	{
		return deptosEnAlquiler.filter({depto2=>(depto1.barrio()==depto2.barrio()) && ((depto1.superficie()-depto2.superficie()).abs()<10)})	
	}
}

const inmobiliariaUno = new Inmobiliaria (deptosEnAlquiler = [deptoUno, deptoDos, deptoTres])