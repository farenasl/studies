import { Component, OnInit, Input } from '@angular/core';
import { Transaccion } from '../../models/transaccion.model';

@Component({
  selector: 'app-egreso',
  templateUrl: './egreso.component.html',
  styleUrls: ['./egreso.component.css']
})
export class EgresoComponent implements OnInit {
  @Input() tran: Transaccion;

  constructor() { }

  ngOnInit() {
  }
}
