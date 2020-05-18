import { Component, Output, EventEmitter, ViewChild, ElementRef } from '@angular/core';
import { Persona } from '../persona.model';
import { LoggingService } from '../LoggingService.service';
import { PersonasService } from '../personas.service';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent {
  @Output() displayChange = new EventEmitter<boolean>();
  @ViewChild('nombreInput') nameInput: ElementRef;
  @ViewChild('apellidoInput') lastnameInput: ElementRef;

  constructor(private loggingService: LoggingService,
              private personasServices: PersonasService) {}

  onAgregarPersona() {
    this.loggingService.enviaMensajeAConsole("Agregando Persona");
    if (this.nameInput.nativeElement.value && this.lastnameInput.nativeElement.value) {
      let persona: Persona = new Persona(this.nameInput.nativeElement.value, this.lastnameInput.nativeElement.value);
      this.loggingService.enviaMensajeAConsole("Enviamos persona: " + persona.nombre + " " + persona.apellido);
      this.personasServices.agregarPersona(persona);
      this.displayChange.emit(true);
    }
    else {
      this.loggingService.enviaMensajeAConsole("Persona no agregada!");
      this.personasServices.agregarPersona(undefined);
      this.displayChange.emit(false);
    }
  }
}
