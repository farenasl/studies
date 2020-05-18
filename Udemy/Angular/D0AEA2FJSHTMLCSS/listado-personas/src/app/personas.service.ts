import { Persona } from './persona.model';

export class PersonasService {
  personas: Persona[] = [
    new Persona('Juan', 'Perez')
    , new Persona('Laura', 'Prieto')];

  agregarPersona(persona: Persona) {
    if (persona !== undefined) {
      this.personas.push(persona);
    }
  }
}
