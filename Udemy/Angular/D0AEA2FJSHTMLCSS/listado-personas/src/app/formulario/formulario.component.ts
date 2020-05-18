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
  nombreInput: string;
  apellidoInput: string;

  onAgregarPersona() {
    if (this.nombreInput && this.apellidoInput) {
      // console.log(this.nombreInput + ' ' + this.apellidoInput);
      this.personaCreada.emit(new Persona(this.nombreInput, this.apellidoInput));
    }
    else
      this.personaCreada.emit();
  }
}
