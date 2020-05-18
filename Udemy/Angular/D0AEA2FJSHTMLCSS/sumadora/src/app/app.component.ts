import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Aplicación Sumadora';
  resultado: number;

  onSumar(result: number) {
    if (!isNaN(result)) {
      this.resultado = result;
    }
    console.log(this.resultado);
  }
}
