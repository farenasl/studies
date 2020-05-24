import { Component, OnInit } from '@angular/core';
import { Transaccion } from '../models/transaccion.model';
import { TransactionService } from '../services/transaction.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'presupuesto-app';
  ingresos: Transaccion[] = [];
  egresos: Transaccion[] = [];

  constructor(private tranSvc: TransactionService) {}

  ngOnInit(): void {
    this.ingresos = this.tranSvc.ingresos;
    this.egresos = this.tranSvc.egresos;
  }
}
