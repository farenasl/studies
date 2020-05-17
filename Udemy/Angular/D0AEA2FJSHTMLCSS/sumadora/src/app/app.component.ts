import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Aplicación Sumadora';
  resultado: number;
  pHValue: string = 'Escribe un número';
  opA: number;
  opB: number;

  onSumar() {
    this.resultado = this.opA + this.opB;
  }
}
