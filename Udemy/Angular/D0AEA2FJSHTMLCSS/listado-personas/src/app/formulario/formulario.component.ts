import { Component, Output, EventEmitter, ViewChild, ElementRef } from '@angular/core';
import { Persona } from '../persona.model';
import { PersonasService } from '../personas.service';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent {
  @Output() displayChange = new EventEmitter<boolean>();
  nameInput: string;
  lastnameInput: string;

  constructor(private personasServices: PersonasService) {
    this.personasServices.saludarIdx.subscribe(
      (indice: number) => alert("El índice es: " + (indice + 1))
    );
  }

  onAgregarPersona() {
    if (this.nameInput && this.lastnameInput) {
      let persona: Persona = new Persona(this.nameInput, this.lastnameInput);
      this.personasServices.agregarPersona(persona);
      this.displayChange.emit(true);
      this.nameInput = '';
      this.lastnameInput = '';
    }
    else {
      this.personasServices.agregarPersona(undefined);
      this.displayChange.emit(false);
    }
  }
}
