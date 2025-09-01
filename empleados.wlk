object galvan {
    var dineroDisponible = 0
    var deudas = 0
    var sueldo = 15000
    method cobrar(cantidad){
       if (cantidad <= deudas){
            deudas = deudas - cantidad
       } else {
           dineroDisponible = dineroDisponible + (cantidad - deudas)
           deudas = 0
       }
    }
    method cambiarSueldo(cantidad) {
      sueldo = cantidad
    }
    method sueldo(){
        return sueldo
    }
    method gastar(cuanto){
        if (cuanto <= dineroDisponible) {
            dineroDisponible = dineroDisponible - cuanto
        } else {
            deudas = deudas + (cuanto - dineroDisponible)
            dineroDisponible = 0
        }
    }
    method deuda(){
        return deudas
    }
    method dinero(){
        return dineroDisponible
    }
}

object baigorria {
    var dineroAcumulado = 0
    var sueldoBase = 0
    var empanadasVendidas = 0
    method ventaEmpanadas(cantidad){
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method totalEmpanadas(){
        return empanadasVendidas
    }
    method sueldo(){
        dineroAcumulado = dineroAcumulado + (empanadasVendidas * 15)
        sueldoBase = sueldoBase + dineroAcumulado
        dineroAcumulado = 0
        empanadasVendidas = 0
        return sueldoBase
    }
    method totalCobrado(){
        return sueldoBase
    }
}

object gimenez {
    var fondos = 300000
    method pagarA(empleado){
        fondos = fondos - empleado.sueldo()
    }
    method fondoActual(){
        return fondos
    }
}
































