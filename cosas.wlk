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

object robor{
    method peligrosidad(){
        return 30
    }
}