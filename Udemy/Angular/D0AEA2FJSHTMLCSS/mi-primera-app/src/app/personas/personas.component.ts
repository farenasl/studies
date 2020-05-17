import { Component } from '@angular/core';

@Component({
  selector: 'app-personas',
  templateUrl: './personas.component.html'
  // template: '<h1>Listado de Personas</h1><app-persona></app-persona><app-persona></app-persona><app-persona></app-persona>'
  // template: `<h1>Listado de Personas</h1>
  // <app-persona></app-persona>
  // <app-persona></app-persona>
  // <app-persona></app-persona>`
  , styleUrls: ['./personas.component.css']
  // , styles: ['h1{ color: green; }']
  // , styles: [`
  //   h1 {
  //     color: gray;
  //   }
  // `]
})

export class PersonasComponent {
  agregarPersona: boolean = false;
  agregarPersonaStatus: string = "No se ha agregado ninguna persona";
  displayStatus: string = 'none';
  tituloPersona: string = 'Ingeniero';
  personaCreada: boolean = false;

  constructor() {
    setTimeout(
      () => {
        this.agregarPersona = true;
      }
      , 5000
    );
  }

  onCrearPersona() {
    this.personaCreada = true;
    this.agregarPersonaStatus = "Persona agregada";
    this.displayStatus = 'block';
  }

  onModificarPersona(event: Event) {
    this.tituloPersona = (event.target as HTMLInputElement).value;
  }
}
