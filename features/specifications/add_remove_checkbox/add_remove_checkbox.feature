#language: pt
@add_remove_checkbox
Funcionalidade: foods

Cenario: Adicionar/Remover

 	Dado que eu acesse o site /dynamic_controls
  	Quando eu clicar no botão "Remove" para tirar o checkbox
  	E a funcionalidade de adicionar checkbox vai ficar disponivel
  	Então clicar em "add" para inserir o checkbox