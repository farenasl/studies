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
  nombreInput: string;
  apellidoInput: string;
  displayStatus: string = 'none';
  statusMessage: string = '* Debe ingresar ambos campos';

  onAgregarPersona() {
    if (this.nombreInput && this.apellidoInput) {
      // console.log(this.nombreInput + ' ' + this.apellidoInput);
      this.personas.push(new Persona(this.nombreInput, this.apellidoInput));
      this.displayStatus = 'none';
    }
    else
      this.displayStatus = 'block';
  }
}
