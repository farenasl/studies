import { Component, Input } from '@angular/core';
import { Transaccion } from '../../models/transaccion.model';

@Component({
  selector: 'app-ingreso',
  templateUrl: './ingreso.component.html',
  styleUrls: ['./ingreso.component.css']
})
export class IngresoComponent {
  @Input() tran: Transaccion;

  constructor() { }
}
