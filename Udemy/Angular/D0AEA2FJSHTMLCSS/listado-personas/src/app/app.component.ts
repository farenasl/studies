import { Component, OnInit } from '@angular/core';
import { Persona } from './persona.model';
import { LoggingService } from './LoggingService.service';
import { PersonasService } from './personas.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{
  title = 'Listado de Personas';
  personas: Persona[] = [];
  displayStatus: string = 'none';
  statusMessage: string = '* Debe ingresar ambos campos';

  constructor(private loggingService: LoggingService, private personasService: PersonasService) {}

  ngOnInit(): void {
    this.personas = this.personasService.personas;
  }

  onPersonaAgregada(display: boolean) {
    if (!display) {
      this.displayStatus = 'block';
    }
    else {
      this.displayStatus = 'none';
    }
  }
}
