import { Component, OnInit, Input } from '@angular/core';
import { Persona } from '../persona.model';
import { PersonasService } from '../personas.service';

@Component({
  selector: 'app-persona',
  templateUrl: './persona.component.html',
  styleUrls: ['./persona.component.css']
})
export class PersonaComponent implements OnInit {
  @Input() p: Persona;
  @Input() index: number;
  constructor(private personaSvc: PersonasService) { }

  ngOnInit(): void {
  }

  saludar() {
    this.personaSvc.saludarIdx.emit(this.index);
  }
}
