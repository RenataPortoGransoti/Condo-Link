import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor() {}

  variavel_lista = [];
  variavel_lista_preco = [];
  texto: string = "";
  preco: number;
  total: number = 0;

  adiciona() {
    if (!(this.texto == "")) {
      this.variavel_lista.push(this.texto);
      this.texto = "";
      this.variavel_lista_preco.push(this.preco);
      this.preco = 0;
    }

    this.total = 0;

    for( let i = 0; i< this.variavel_lista_preco.length; i++){
      this.total = this.total + parseFloat(this.variavel_lista_preco[i]);
    } }

  remove(indice) {
    this.total = this.total - parseFloat(this.variavel_lista_preco[indice]);
    this.variavel_lista.splice(indice, 1)
    this.variavel_lista_preco.splice(indice, 1)  }

}

