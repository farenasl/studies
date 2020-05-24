import { Transaccion } from '../models/transaccion.model';
import { Injectable } from '@angular/core';

@Injectable()
export class TransactionService {
    ingresos: Transaccion[] = [
        new Transaccion('Salario', 2100, undefined)
        , new Transaccion('Venta coche', 1500, undefined)
    ];
    egresos: Transaccion[] = [
        new Transaccion('Renta departamento', 900, 21)
        , new Transaccion('Ropa', 435.28, 10)
    ];

    // True means ingresos, False means egresos
    addTransaccion(tran: Transaccion, type: boolean) {
        if (tran !== undefined) {
            if (type) {
                this.ingresos.push(tran);
            } else {
                this.egresos.push(tran);
            }
        }
    }
}
