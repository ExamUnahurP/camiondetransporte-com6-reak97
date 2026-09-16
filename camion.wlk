import cosas.*
object camion {
    const carga= [knightRider, bumblebee]
    method carga(){
        return carga
    }
    method peso(){
        return 1000 + self.pesoCarga() 
    }
    method pesoCarga(){
        return carga.map({unaCarga => unaCarga.peso()}).sum()
    }
    method cargar(unaCosa){
        carga.add(unaCosa)
    }
    method descargar(unaCosa){
        carga.remove(unaCosa)
    }
    method sonPares(){
        return carga.all({unaCarga => unaCarga.peso().even()})
    }
    method pesaUn(unValor){
        return carga.any({unaCarga => unaCarga.peso() == unValor})
    }
    method primeroConPeligrosidad(unNivel){
        return carga.find({unaCarga => unaCarga.peligrosidad() == unNivel})
    }
    method peligrosidadSuperiorA(unNivel){
        return carga.filter({unaCarga => unaCarga.peligrosidad() > unNivel})
    }
    method peligrosidadSuperiorSegun(unaCarga){
        return carga.filter({cargaUno => cargaUno.peligrosidad() > unaCarga.peligrosidad()})
    }
    method estaExcedido(){
        return camion.peso() > 2500
    }
    method puedeViajarSegun(unValor){
        return estaExcedido() and peligrosidadSuperiorA(unValor)
    }

}