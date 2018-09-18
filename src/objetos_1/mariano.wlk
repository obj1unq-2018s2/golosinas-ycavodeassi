object mariano {
/*
* `comprar(unaGolosina)` : agrega una golosina a la bolsa de golosinas compradas.
* `desechar(unaGolosina)` : desecha la golosina escogida de la bolsa de golosinas.
* `probarGolosinas()` : le da un mordisco a todas las golosinas dentro de 
la bolsa de golosinas compradas.
* `hayGolosinaSinTACC()` : indica si hay al menos una golosina sin gluten en la bolsa 
de golosinas compradas.
* `preciosCuidados()` : indica si todas las golosinas compradas tienen un 
precio menor o igual a 10 pesos.
* `golosinaDeSabor(unSabor)` : devuelve _la primer golosina_ que encuentra en la 
bolsa del sabor escogido.
* `golosinasDeSabor(unSabor)` : devuelve _las golosinas_ que encuentre dentro de 
la bolsa del sabor escogido.
* `sabores()` : que devuelve los sabores de las golosinas de la bolsa, idealmente
 sin repetidos. <br> 
  P.ej. aunque Mariano tenga tres golosinas de sabor naranja, 
en lo que devuelve `sabores()` el naranja debería aparecer una sola vez. 
<br> Una forma de resolver esto es usando **conjuntos**; 
revolver en el apunte sobre colecciones y closures: [https://objetos1wollokunq.gitlab.io/material/guia-colecciones-basicas.pdf]
* `golosinaMasCara()` : devuelve la golosina mas cara en la bolsa de golosinas compradas.
* `pesoGolosinas()` : devuelve el peso de la bolsa de golosinas compradas, o sea, 
la suma del peso de cada golosina. 
 */
 	const golosinas = []
 	
	method comprar(unaGolosina) { golosinas.add(unaGolosina) }
	method desechar(unaGolosina) { golosinas.remove(unaGolosina) }
	method probarGolosinas() { golosinas.forEach{ golosina => golosina.mordisco()} }
	method golosinas() {
		/* cambiar por la implementacion correcta */ 
		return [] 
	}
	

}

