import { Component, OnInit, Output, EventEmitter, ViewChild, ElementRef } from '@angular/core';
import { Persona } from '../persona.model';

@Component({
  selector: 'app-formulario',
  templateUrl: './formulario.component.html',
  styleUrls: ['./formulario.component.css']
})
export class FormularioComponent {
  @Output() personaCreada = new EventEmitter<Persona>();
  @Output() displayChange = new EventEmitter<string>();
  @ViewChild('nombreInput') nameInput: ElementRef;
  @ViewChild('apellidoInput') lastnameInput: ElementRef;

  onAgregarPersona() {
    if (this.nameInput.nativeElement.value && this.lastnameInput.nativeElement.value) {
      this.personaCreada.emit(new Persona(this.nameInput.nativeElement.value, this.lastnameInput.nativeElement.value));
    }
    else {
      this.personaCreada.emit();
    }
  }
}
