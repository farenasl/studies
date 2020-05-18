import { Persona } from './persona.model';
import { LoggingService } from './LoggingService.service';
import { Injectable, EventEmitter } from '@angular/core';

@Injectable()
export class PersonasService {
  personas: Persona[] = [
    new Persona('Juan', 'Perez')
    , new Persona('Laura', 'Prieto')];

  saludarIdx: EventEmitter<number> = new EventEmitter<number>();

  constructor(private logSvc: LoggingService) { }

  agregarPersona(persona: Persona) {
    this.logSvc.enviaMensajeAConsole("Agregando Persona");
    if (persona !== undefined) {
      this.logSvc.enviaMensajeAConsole('Persona: ' + persona.nombre + ' ' + persona.apellido);
      this.personas.push(persona);
    }
    else {
      this.logSvc.enviaMensajeAConsole("Persona no agregada!");
    }
  }
}
