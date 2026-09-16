object knightRider{
    method peso(){
        return 500
    }
    method peligrosidad(){
        return 10
    }
}
object bumblebee{
    var estado= auto
    method peso(){
        return 800
    }
    method peligrosidad(){
        return estado.peligrosidad()
    }
    method cambiarEstado(unEstado){
        estado= unEstado
    }
}

object auto{
    method peligrosidad(){
        return 15
    }
}

object robot{
    method peligrosidad(){
        return 30
    }
}

object paqueteLadrillos{
    var cantLadrillos= 10
    method peso{
        return cantLadrillos * 2
    }
    method peligrosidad(){
        return 2
    }
    method cambiarCantDeLadrillos(unaCantidad){
        cantLadrillos= unaCantidad
    }
}

object arenaAGranel{
    var peso= 500
    method peso(){
        return peso
    }
    method nuevoPeso(unPeso){
        peso= unPeso
    }
    method peligrosidad(){
        return 1
    }
}

object bateriaAntiaerea{
    var tieneMisiles= true
    method peso()= if(self.tieneMisiles()) 300 else 200
    method tieneMisiles(){
        return tieneMisiles
    }
    method cambiarEstadoMisiles(){
        tieneMisiles= not tieneMisiles
    }
    method peligrosidad()= if(self.tieneMisiles()) 100 else 0
}

object contenedorPortuario{
    const carga= []
    method peso(){
        return 100 + pesoCarga()
    }
    method pesoCarga(){
        return carga.map({unaCarga => unaCarga.peso()}).sum()
    }
    method peligrosidad()= if(carga.isEmpty())0 else carga.max({unaCarga => unaCarga.peligrosidad()}).peligrosidad()
    
    method cargar(unaCarga){
        carga.add(unaCarga)
    }
    method descargar(unaCarga){
        carga.remove(unaCarga)
    }
}

object residuosRadioactivos(){
    var peso= 200
    method peso(){
        
    }
}