import cosas.*
object camion {
    const carga= []
    method peso(){
        return 1000 + self.pesoCarga() 
    }
    method pesoCarga(){
        return carga.map({e => e.peso()}).sum()
    }
    method cargar(unaCosa){
        carga.add(unaCosa)
    }
    method descargar(unaCosa){
        carga.remove(unaCosa)
    }
}