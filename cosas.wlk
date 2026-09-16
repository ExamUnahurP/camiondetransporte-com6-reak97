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
    var tieneMisiles=
    method peso(){

    }
    method tieneMisiles(){

    }
}