import accesorios.*

class Bici{
	var property rodado
	var property largo
	var property marca
	var property accesorios = []

	
	method altura(){ return rodado * 2.5 + 15 }
	method velocidadCrucero() { if(largo >= 120){return rodado + 6} else{return rodado + 2} }
	method carga() { return accesorios.sum({a=>a.carga()}) }
	method peso() { return rodado/2 + accesorios.sum({a=>a.peso()}) }
	method tieneLuz() { return accesorios.any({a=>a.luminoso()}) }
	method accesoriosLivianos() { return accesorios.count({a=>a.peso() < 1}) }
	
}
