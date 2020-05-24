export class Transaccion {
    constructor(public detalle?: string, public precio?: number, public percentage?: number) { }

    isEmpty() {
        if (this.detalle !== undefined || this.precio !== undefined) {
            return false;
        } else { return true; }
    }
}
