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