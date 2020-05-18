import { Component } from '@angular/core';
import { Persona } from './persona.model';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Listado de Personas';
  personas: Persona[] = [new Persona('Juan', 'Perez'), new Persona('Laura', 'Prieto')];
  displayStatus: string = 'none';
  statusMessage: string = '* Debe ingresar ambos campos';

  onPersonaAgregada(persona: Persona) {
    if (persona === undefined)
      this.displayStatus = 'block';
    else {
      this.personas.push(persona);
      this.displayStatus = 'none';
    }
  }
}
