import { Component, Input } from '@angular/core';

@Component({
  selector: 'lib-button',
  imports: [],
  template: `
    <button (click)="onClick()">{{label}}</button>
  `,
  styles: ``
})
export class ButtonComponent {

  @Input() label!: string;

  onClick():void{
    console.log('Button clicked!');
  }
}
