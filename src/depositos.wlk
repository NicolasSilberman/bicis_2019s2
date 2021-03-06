import bicis.*
import accesorios.*

class Deposito{
	var property bicis = []
	
	method rapidas() {return bicis.filter({b=>b.velocidadCrucero() > 25})}
	method marcas() {return bicis.map({b=>b.marca()}).asSet()}
	method nocturno() {return bicis.all({b=>b.tieneLuz()})}
	method cargaEspecifica(kg) {return bicis.any({b=>b.carga() > kg})}
	method marcaMasRapida() {return bicis.max({b=>b.velocidadCrucero()}).marca()}
	method cargaTotal() 
	{
		var largas = bicis.filter({b=>b.largo() > 170})
		return largas.sum({l=>l.carga()})
	}
	
	method cantidadSinAccesorios() { return bicis.count({b=>b.accesorios().isEmpty()}) }
	method sonCompanieras(biciAComparar) { return bicis.filter({bici=>bici.sonCompanieraCon(biciAComparar)}) }
	
	
}