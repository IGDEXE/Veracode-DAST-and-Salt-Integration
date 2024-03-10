Acesse o portal da Veracode e na barra superior selecione **Scans & Analysis**, depois clique em **Dynamic Analysis**.

Na tela do DAST, clique no botão **Scan API Specifications** no canto superior direito:
![Start Scan Page](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/71gexyu7fxqon4mdbk5a.png)

Na tela de configuração, escolha um nome para identificação do projeto, utilizando o campo **Dynamic Analysis Name**:
![Scan Definition](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/54hfqci7mqanluwerc34.png)

Em **API Specifications** pode subir um novo projeto ou escolher um que já tenha sido carregado, lembrando que os tipos de especificação compatíveis são:
- OpenAPI 3.0 and 2.0 (.yaml, .json)
- HTTP Archive (.har)

E os tipos de autenticação que podem ser configurados:
- Client Certification 
- Basic Authentication/NTLMv2
- Custom HTTP Headers 
- OAuth 2.0

Uma vez carregada a especificação (o limite para um único scan é de 250 especificações), pode na seção abaixo definir um Browser e/ou User Agent.

Caso queira personalizar alguma configuração, pode clicar no lápis ao fim da linha do Sever da especificação: 
![Edit Scan](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/34fojd4q8bape6s0cstu.png)

Nessa tela pode escolher os métodos que vão ser analisados, o modo de autenticação e a utilização do ISM:
![Options](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/lq725i6t8dkpzwg1o7jr.png)

Em **Visibility** Settings pode definir as equipes que podem visualizar os projetos. Caso tenham um usuário comum, o projeto já vai automaticamente ficar disponível para os membros do seu time. 

Em **Organization Information** pode colocar informações adicionais, como a unidade de negócios e o gerente responsável. Por fim em **Scanning Certification** é preciso marcar o check box onde confirma que possui permissão para realizar os testes, para assim habilitar os botões abaixo: 
![Buttons](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/1o4e4aj92ynya8doxp6d.png)

Em **Schedule** podemos escolher algumas opções, como iniciar agora e recorrência, e definir janelas de tempos para a realização da analise:
![Schedule](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qgb3tbw7baebogpt3hyx.png)

Uma vez confirmado, basta clicar em **Review and Submit** e depois em **Submit**.