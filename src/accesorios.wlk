class Farolito
{
	method peso() {return 0.5}
	method luminoso() {return true}
	method carga() {return 0}
}
class Canasto
{
	var property volumen
	
	method peso(){return volumen / 10}
	method luminoso() {return true}
	method carga(){return volumen * 2}
}
class Morral
{
	var property largo
	var property ojoGato
	
	method peso() {return 1.2}
	method luminoso() {return ojoGato}
	method carga() {return largo / 3}
		
}

/*
Deberia modificarse las clases ya existentes para que sean polimorficas
a las nuevas que se desea agregar y el programa continue funcionando sin modificar otros archivos
*/