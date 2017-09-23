# creditas

	. O teste 1 - Especificação está na raiz do projeto com o nome de "login_especificação.md".


# Como o projeto funciona

-- Em support > env.rb estão os apontamentos para a pasta config (api.yml e cucumber.yml) 
	
	. o arquivo api.yml é responsável por guardar o endpoint que vai ser acessado nos testes de api.
	
	. o arquivo cucumber.yml é responsável por fazer a gestão de ambiente(podendo rodar em qa, preprod e prod).


# Os testes

-- Dentro de step_definitions, 3 testes(abrir nova aba, adicionar e remover checkbox e o post).
	- o teste de api funciona da seguinte forma:
		
		. dentro do teste tem $api, esse "$" faz referência com a pasta config > api.yml e carrega o endPoint que está lá dentro,
		depois que carregou o endpoint, passamos os headers, body e o método httParty faz o post baseado nessas informações.

	- Os testes de Front:
		
		. para o teste de checkbox percebi que os nomes dos botões eram iguais "btn" então preferi
		 pegar pelo nome do que estava na tela e depois fazer um expect para garantir o resultado.

		. para o teste da nova aba eu queria garantir com o expect o resultado final mas 
		não funcionou, deixei algumas das maneiras que testei e no final deixei apenas 
		um puts para dizer que abriu a nova aba.