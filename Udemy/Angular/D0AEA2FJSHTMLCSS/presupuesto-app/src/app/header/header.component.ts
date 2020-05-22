import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  ingreso: number = 4300;
  egreso: number = 1954.36;
  egreso_percentage: number = this.egreso / this.ingreso * 100;
  total: number = this.ingreso - this.egreso;

  constructor() { }

  ngOnInit() {
  }
}
