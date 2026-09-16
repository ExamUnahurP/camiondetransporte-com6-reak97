import cosas.*
object camion {
    const carga= []
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
    method pesaUn(valor){
        return carga.any({unaCarga => unaCarga.peso() == valor})
    }
    method 
}