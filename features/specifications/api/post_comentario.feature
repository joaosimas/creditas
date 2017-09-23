#language: pt
@post_comment
Funcionalidade: api

Cenario: POST

 	Dado que eu acesse o endpoint /post
  	Quando eu passar os parametros corretos no body tittle, body e userid
  	Então o post vai ser executado com sucesso sendo validado pelo response code e body