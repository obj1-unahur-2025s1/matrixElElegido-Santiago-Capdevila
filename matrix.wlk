object nave {
  const pasajeros = []

  method pasajeros() {
    return pasajeros.size()
  }

  method pasajeroMayorVitalidad() {
    return pasajeros.max({pasajero => pasajero.vitalidad()})
  }

  method pasajeroMenorVitalidad() {
    return pasajeros.min({pasajero => pasajero.vitalidad()})
  }

  method estaEquilibradaEnVitalidad() {
    return self.pasajeroMayorVitalidad().vitalidad() < self.pasajeroMenorVitalidad().vitalidad() * 2
  }

  method estaElElegido() {
    return pasajeros.any({pasajero => pasajero.esElElegido()})
  }

  method chocar() {
    pasajeros.forEach({pasajero => pasajero.saltar()})
    pasajeros.clear()
  }

  method pasajerosNoElegidos() {
    return pasajeros.filter({pasajero => !pasajero.esElElegido() })
  }

  method acelerar() {
    self.pasajerosNoElegidos().forEach({pasajero => pasajero.saltar()})
  }
}

// Pasajeros

object neo {
  var energia = 100
  
  method esElElegido() {
    return true
  }

  method saltar() {
    energia = energia / 2
  }

  method vitalidad() {
    return energia / 10
  }
}

object morfeo {
  var vitalidad = 8
  var estaCansado = false

  method esElElegido() {
    return false
  }

  method saltar() {
    vitalidad = 0.min(vitalidad - 1)
    estaCansado = !estaCansado
  }

  method vitalidad() {
    return vitalidad
  }
}

object trinity {
  method vitalidad() {
    return 0
  }

  method saltar() {
    //
  }

  method esElElegido() {
    return false
  }
}


