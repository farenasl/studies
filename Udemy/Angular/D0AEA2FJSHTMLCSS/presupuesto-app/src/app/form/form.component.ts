import { Component } from '@angular/core';
import { Transaccion } from '../../models/transaccion.model';
import { TransactionService } from 'src/services/transaction.service';

declare var $: any;

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent {
  type: string = 'ing';
  tran: Transaccion = new Transaccion();

  constructor(private tranSvc: TransactionService) { }

  onAgregarTransaccion() {
    if (!this.tran.isEmpty()) {
      this.tranSvc.addTransaccion(this.tran, (this.type === 'ing' ? true : false));
      this.tran = new Transaccion();
    }
  }
}
