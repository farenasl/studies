import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { Persona } from '../persona.model';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent {
  @Output() personaCreada = new EventEmitter<Persona>();
  @Output() displayChange = new EventEmitter<string>();
  // nombreInput: string;
  // apellidoInput: string;

  onAgregarPersona(nombreInput:HTMLInputElement, apellidoInput:HTMLInputElement) {
    if (nombreInput.value && apellidoInput.value) {
      this.personaCreada.emit(new Persona(nombreInput.value, apellidoInput.value));
    }
    else
      this.personaCreada.emit();
  }
}
