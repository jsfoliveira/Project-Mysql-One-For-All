# 	:woman_technologist: Project Mysql One For All

Esse projeto contém uma série de informações sobre o que eu aprendi aqui na Trybe ao longo  do curso de desenvolvimento web da Trybe. <br>
Esse projeto contém uma série de desafios com diferentes níveis de complexidade que devem ser resolvidos cada um em seu arquivo próprio, usando query de MySQL.

## :rocket:Começando
Esse projeto foi proposto pelo curso de desenvolvimento web da Trybe.
### Desenvolvimento
Esse proejto foi desenvolvido no bloco de back-end, usei query de MySQL.
### Commits
Os commits foram feitos de acordo com os requisitos finalizados.
### Branch
Todo o projeto foi feita na branch 'juliana-oliveira-mysql-one-for-all', isso por conta da exigência do curso.
### Instalação
Antes de realizar o projeto, precisei instalar as dependências usando npm install, dentro do container. Usei o comando docker exec -it all_for_one bash, depois dei npm install.
### Testes
Os testes usando foram feitos através dos **comandos**, feitos dentro do container docker: <br>
* Primeiro fiz docker exec -it all_for_one bash
* Depois fiz npm test
### Autores
Esse foi um projeto individual,que desenvolvido somente por Juliana Oliveira.
### Ferramentas usadas
Foi usado Visual Studio Code, além do Trello que auxiliou na organização das tarefas.
### Framework usado
Nenhum.
### Banco de Dados
O banco de dados usado foi o SpotifyClone, que está definido no arquivo chamado:<br>
SpotifyClone-Non-NormalizedTable
### Informações Importantes
Na raiz do projeto, foram criados os arquivos desafio1.sql até desafio9.sql. Nele contém todas as querys que serão usadas nos testes. Para fazer todos os arquivos de uma vez só, usei o seguinte comando:
* touch desafio{1..9}.sql
<br>
**Não é necessário colocar no início dos arquivos** `USE SpotifyClone` ou `SET SQL_SAFE_UPDATES = 0;` <br>
Após a execução dos teste locais, o banco de dados `SpotifyClone` é deletado.<br>
Antes de começar, seu docker-compose precisa estar na versão 1.29 ou superior. 

## :footprints:Requisitos
### Metodologia usada
No trabalho do desenvolvimento de software a gente sempre tem prazos, muitas vezes os prazos são apertados.<br>
Por outro lado, eu não quero criar algo que não entendo perfeitamente, como também fazer códigos rápidos pode levar a erros que podem demorar muito pra corrigir.<br>
Por isso, usei e sempre uso o método Baby Steps, que é uma estratégia de abordar o desafio passo à passo, defensivamente.<br>
Baby steps é um termo em inglês que quer dizer passos de bebê. Refere-se a fazer as coisas, quaisquer que sejam, devagar, com calma, passo a passo.
#### :footprints:Requisito 1-   Crie um banco com o nome de **`SpotifyClone`**.

* Providencie as queries necessárias para criar tabelas normalizadas que atendam aos requisitos descritos na seção anterior;

* Providencie as queries necessárias para popular as tabelas de acordo com os dados listados na seção anterior;

* Crie um arquivo de configurações `desafio1.json`, que mapeará em qual tabela e coluna se encontram as informações necessárias para a avaliação automatizada deste desafio. 

<details>
  <summary><strong>👇 As configurações devem possuir o seguinte formato</strong></summary><br />

  ```json
  {
    "coluna_usuario": "nome-da-coluna",
    "tabela_que_contem_usuario": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_plano": "nome-da-coluna",
    "tabela_que_contem_plano": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_historico_de_reproducoes": "nome-da-coluna",
    "tabela_que_contem_historico_de_reproducoes": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_seguindo_artistas": "nome-da-coluna",
    "tabela_que_contem_seguindo_artistas": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_artista": "nome-da-coluna",
    "tabela_que_contem_artista": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_album": "nome-da-coluna",
    "tabela_que_contem_album": "nome-da-tabela-que-armazena-a-coluna",
    "coluna_cancoes": "nome-da-coluna",
    "tabela_que_contem_cancoes": "nome-da-tabela-que-armazena-a-coluna"
  }
  ```

  Essa configuração deve ser feita baseada no seu banco de dados **após a normalização**. Ou seja, se você criou uma tabela chamada `users` que possui a coluna `name`, você substituiria `"coluna_usuario"` e `"tabela_que_contem_usuario"` da seguinte forma:

  ```json
  {
    "coluna_usuario": "name",
    "tabela_que_contem_usuario": "users",
    ...
  }
  ```

</details>

* Salve as queries criadas no arquivo `desafio1.sql`.

<details>
<summary><strong>👇 Seu código deverá ser similar ao seguinte</strong></summary><br />

  ```sql
  DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE SpotifyClone;

  CREATE TABLE SpotifyClone.tabela1(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.tabela2(
      coluna1 tipo restricoes,
      coluna2 tipo restricoes,
      colunaN tipo restricoes,
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');
  ```

</details>

<details>
<summary><strong>☑️ O que será verificado</strong></summary><br />

  - Será validado se os planos estão na tabela normalizada.

  - Será validado se o histórico de reprodução está na tabela normalizada.

  - Será validado se as informações sobre pessoas seguindo artistas estão na tabela normalizada.

  - Será validado se os álbuns estão na tabela normalizada.

  - Será validado se as canções estão na tabela normalizada.

  - Será validado se as informações sobre pessoas usuárias estão na tabela normalizada.

  - Será validado se as informações sobre artistas estão na tabela normalizada.

  ⚠️ Note que uma vez executado um teste, a sua base de dados `SpotifyClone` **será dropada**. Logo, **se atente** a salvar seu progresso nos arquivos de desafio! ⚠️
 
</details>

#### :footprints:Requisito 2: Crie uma `QUERY` que exiba três colunas

1. A primeira coluna deve exibir a quantidade total de canções. Dê a essa coluna o alias "**cancoes**".

2. A segunda coluna deve exibir a quantidade total de artistas e deverá ter o alias "**artistas**".

3. A terceira coluna deve exibir a quantidade de álbuns e deverá ter o alias "**albuns**".

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Estatísticas musicais](./images/estatisticas_musicais.png)

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `cancoes`, `artistas` e `albuns`.

</details>

#### :footprints:Requisito 3: Crie uma `QUERY` que deverá ter apenas três colunas

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve possuir o alias "**qtde_musicas_ouvidas**" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

3. A terceira coluna deve possuir o alias "**total_minutos**" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

Os resultados devem estar agrupados pelo nome da pessoa usuária e ordenados em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Histórico de reprodução das pessoas usuárias](./images/HistoricoReproducaoUsuarios.png)

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `usuario`, `qtde_musicas_ouvidas` e `total_minutos`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

#### :footprints:Requisito 4: Crie uma `QUERY` que deve mostrar as pessoas usuárias que estavam ativas no ano de **2021** se baseando na data mais recente no histórico de reprodução.

1. A primeira coluna deve possuir o alias "**usuario**" e exibir o nome da pessoa usuária.

2. A segunda coluna deve ter o alias "**condicao_usuario**" e exibir se a pessoa usuária está ativa ou inativa.

O resultado deve estar ordenado em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Condição da pessoa usuária](./images/condicao_usuario.png)

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `usuario` e `condicao_usuario`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

#### :footprints:Requisito 5: Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma `QUERY` que possua duas colunas:

1. A primeira coluna deve possuir o alias "**cancao**" e exibir o nome da canção.

2. A segunda coluna deve possuir o alias "**reproducoes**" e exibir a quantidade de pessoas que já escutaram a canção em questão.

Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Top 2 hits do momento](./images/top_2_hits_do_momento.png)


O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `cancao` e `reproducoes`.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

#### :footprints:Requisito 6: Tendo como base o valor dos planos e o plano que cada pessoa usuária cadastrada possui no banco, queremos algumas informações sobre o faturamento da empresa. Crie uma `QUERY` que deve exibir quatro dados:

1. A primeira coluna deve ter o alias "**faturamento_minimo**" e exibir o menor valor de plano existente para uma pessoa usuária.

2. A segunda coluna deve ter o alias "**faturamento_maximo**" e exibir o maior valor de plano existente para uma pessoa usuária.

3. A terceira coluna deve ter o alias "**faturamento_medio**" e exibir o valor médio dos planos possuídos por pessoas usuárias até o momento.

4. Por fim, a quarta coluna deve ter o alias "**faturamento_total**" e exibir o valor total obtido com os planos possuídos por pessoas usuárias.

Para cada um desses dados, por se tratarem de valores monetários, deve-se arredondar o faturamento usando apenas duas casas decimais.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Faturamento atual](./images/faturamento_atual.png)

O que será verificado:

- Será validado se existe uma `QUERY` que exibe os dados corretos nas colunas `faturamento_minimo`, `faturamento_maximo`, `faturamento_medio` e `faturamento_total`.

</details>

#### :footprints:Requisito 8: Mostre uma relação dos álbuns produzidos por um artista específico, neste caso `"Walter Phoenix"`.
Para isto crie uma `QUERY` que o retorno deve exibir as seguintes colunas:

1. O nome da pessoa artista, com o alias "**artista**".

2. O nome do álbum, com o alias "**album**".

Os resultados devem ser ordenados pelo nome do álbum em ordem alfabética.

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Álbuns da pessoa artista](./images/AlbunsDoArtista.png)

O que será verificado:

- Será validado se a `QUERY` retorna a coluna `artista` contendo o nome da pessoa artista e a coluna `album` contendo o nome do álbum.

- Será validado se as colunas estão ordenadas de forma correta.

</details>

#### :footprints:Requisito 9: Crie uma `QUERY` que exibe a quantidade de músicas que estão presentes atualmente no histórico de reprodução de uma pessoa usuária específica. Para este caso queremos saber quantas músicas estão no histórico do usuário `"Bill"` e a consulta deve retornar a seguinte coluna:

1. O valor da quantidade, com o alias "**quantidade_musicas_no_historico**".

<details>
  <summary><strong>➕ Informações complementares</strong></summary><br />

Sua `QUERY` deve retornar a seguinte informação:

![Quantidade de músicas no histórico](./images/quantidade_musicas_no_historico.png)


O que será verificado:

- Será validado se a `QUERY` retorna a quantidade correta de canções presentes no histórico de reprodução da pessoa especificada.

</details>
