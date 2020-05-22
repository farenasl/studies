import { Component } from '@angular/core';
import { Transaccion } from '../models/transaccion.model';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'presupuesto-app';
  ingresos: Transaccion[] = [new Transaccion('Salario', 2100), new Transaccion('Venta coche', 1500)];
  egresos: Transaccion[] = [new Transaccion('Renta departamento', 900), new Transaccion('Ropa', 435.28)];
}
