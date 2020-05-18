import { Component, OnInit, Output, EventEmitter, ViewChild, ElementRef } from '@angular/core';
import { Persona } from '../persona.model';
import { LoggingService } from '../LoggingService.service';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
  , providers: [LoggingService]
})
export class FormularioComponent {
  @Output() personaCreada = new EventEmitter<Persona>();
  @Output() displayChange = new EventEmitter<string>();
  @ViewChild('nombreInput') nameInput: ElementRef;
  @ViewChild('apellidoInput') lastnameInput: ElementRef;

  constructor(private loggingService: LoggingService) {}

  onAgregarPersona() {
    this.loggingService.enviaMensajeAConsole("Agregando Persona");
    if (this.nameInput.nativeElement.value && this.lastnameInput.nativeElement.value) {
      let persona: Persona = new Persona(this.nameInput.nativeElement.value, this.lastnameInput.nativeElement.value);
      this.loggingService.enviaMensajeAConsole("Enviamos persona: " + persona.nombre + " " + persona.apellido);
      this.personaCreada.emit(persona);
    }
    else {
      this.loggingService.enviaMensajeAConsole("Persona no agregada!");
      this.personaCreada.emit();
    }
  }
}
