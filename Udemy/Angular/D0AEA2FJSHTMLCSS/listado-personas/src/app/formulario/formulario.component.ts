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
  @ViewChild('nombreInput') nameInput: ElementRef;
  @ViewChild('apellidoInput') lastnameInput: ElementRef;

  constructor(private personasServices: PersonasService) {}

  onAgregarPersona() {
    if (this.nameInput.nativeElement.value && this.lastnameInput.nativeElement.value) {
      let persona: Persona = new Persona(this.nameInput.nativeElement.value, this.lastnameInput.nativeElement.value);
      this.personasServices.agregarPersona(persona);
      this.displayChange.emit(true);
    }
    else {
      this.personasServices.agregarPersona(undefined);
      this.displayChange.emit(false);
    }
  }
}
