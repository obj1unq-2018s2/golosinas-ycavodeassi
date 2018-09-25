//El peso de las golosinas se denota en gramos. 

class Bombones {
	var peso = 15
	
	method precio() = 5
	method peso() = peso
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() = "Frutilla"
	method libreGluten() = true
}

class Alfajores {
	var peso = 300
	
	method precio() = 12
	method peso() = peso
	method mordisco() { peso *= 0.8 }
	method gusto() = "Chocolate"
	method libreGluten() = false
}

class Caramelos {
	var peso = 5
	
	method precio() = 1
	method peso() = peso
	method mordisco() { peso -= 1 }
	method gusto() = "Frutilla"
	method libreGluten() = true 
}

class Chupetines {
	var peso = 7
	
	method precio() = 2
	method peso() = peso
	method mordisco() { if (peso >= 2) peso *= 0.9 }
	method gusto() = "Naranja"
	method libreGluten() = true 
}

class Obleas {
	var peso = 250
	
	method precio() = 5
	method peso() = peso
	method mordisco() { if (peso > 70) peso *= 0.5 else peso *= 0.25 }
	method gusto() = "Vainilla"
	method libreGluten() = false 
}

class Chocolatines {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	method precio() = pesoInicial * 0.5
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method peso() = pesoActual
	method mordisco() { pesoActual = (pesoActual - 2).max(0) }
	method gusto() = "Chocolate"
	method libreGluten() = false
}

class GolosinasBaniadas {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() = golosinaInterior.precio() + 2 
	method peso() = golosinaInterior.peso() + pesoBanio
	method mordisco() {
		golosinaInterior.mordisco()
		pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() = golosinaInterior.gusto() 
	method libreGluten() = golosinaInterior.libreGluten()	
}

class Tuttifruttis {
	const sabores = ["Frutilla", "Chocolate", "Naranja"]
	var vecesMordido = 0
	var saborActual = sabores.get(vecesMordido)
	var peso = 5
	var property tieneGluten
	
	method precio() = if (tieneGluten) 7 else 10
	method peso() = peso 
	method mordisco() {
		vecesMordido = if (vecesMordido == (sabores.size() - 1)) 0 else vecesMordido + 1
		saborActual = sabores.get(vecesMordido)
	}
	method gusto() = saborActual  
	method libreGluten() = if (tieneGluten==null) self.error("Ingrese si *tuttifrutti* tiene/no tiene gluten") else tieneGluten
}

