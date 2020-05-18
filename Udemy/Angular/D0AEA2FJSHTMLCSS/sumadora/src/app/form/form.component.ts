import { Component, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent{
  pHValue: string = 'Escribe un número';
  opA: number;
  opB: number;
  @Output() sumar = new EventEmitter<number>();

  onSumar() {
    // console.log(this.opB + this.opA);
    this.sumar.emit(this.opA + this.opB);
  }
}
