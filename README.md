
<!-- Header -->
<p align="center">
<a href="https://cienciassociais.ufes.br/">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/marca_ufes.png" width="340" alt="Ci�ncias Sociais - UFES">
</a>
</p>

# Pobreza Multidimensional do Brasil e Esp�rito Santo: uma ilustra��o metodol�gica em pesquisa por amostra domiciliar

Este projeto � oriundo do meu trabalho de conclus�o de curso (Ci�ncias Sociais - Bacharel) apresentado ao Departamento de Ci�ncias Sociais da Universidade Federal do Esp�rito Santo, orientado pelo Professor Doutor Marcelo Fetz de Almeida.

O objetivo foi ilustrar algumas aplica��es das metodologias de an�lise da pobreza, em uma abordagem multidimensional, e introduzir-se no �mago do debate conceitual dentro deste escopo. Com base na an�lise dos microdados da Pesquisa Nacional por Amostra de Domic�lios Cont�nua de 2019, buscou-se contribuir para o desenvolvimento das pesquisas no campo, aplicando, para o Esp�rito Santo, um proposto �ndice de Pobreza Multidimensional para o Brasil.

## Sobre pobreza

A pobreza, compreendida como a priva��o que os indiv�duos experienciam em determinado momento, � um fen�meno multifacetado com determina��es hist�ricas, sociais, econ�micas e pol�ticas que se manifestam de formas objetivas e subjetivas. Por se tratar de um fen�meno n�o homog�neo, as formas de capt�-lo e mensur�-lo, em todas suas determina��es e dimens�es, tamb�m varia. Sendo assim, os resultados dos estudos neste campo nem sempre convergem, dependendo da abordagem anal�tica, dos dados em an�lise e das m�tricas utilizadas.
Prop�e-se aqui a aplica��o do �ndice de Pobreza Multidimensional (IPM) proposto para o Brasil e elaborado por Adriana Serra (2017), adaptando-o �s vari�veis dispon�veis na Pesquisa Nacional por Amostra Domiciliar Cont�nua (PNADc), do Instituto Brasileiro de Geografia e Estat�stica (IBGE).

## M�tricas de mensura��o da pobreza

A mensura��o da pobreza pela metodologia Alkire-Foster (ALKIRE, FOSTER, 2011a; ALKIRE et al., 2015) se realiza atrav�s da identifica��o dos pobres na amostra e da agrega��o das informa��es em um �ndice.
Selecionou-se algumas m�tricas para o corpo anal�tico proposto, s�o elas:

* a quantidade de indiv�duos privados em cada indicador que comp�e as dimens�es do IPM;
* a contribui��o relativa desses indicadores na composi��o final do �ndice escalar;
* a incid�ncia da pobreza na popula��o (ou a propor��o de observa��es em priva��o, em rela��o a popula��o geral);
* a intensidade da pobreza vivenciada pelos identificados, pelas linhas de corte, como em priva��o (ou a m�dia percentual de dimens�es em que as pessoas pobres est�o privadas);
* e, por fim, o IPM, onde valores pr�ximos de 1 (um) significam uma maior incid�ncia e intensidade da pobreza multidimensional.

## Tratamento de dados

O tratamento se d� atrav�s da transmuta��o das respostas declaradas em uma escala raz�o, onde zero e um s�o os valores balizadores, possibilitando a produ��o de uma escala de priva��o.
Ainda se agrega os indicadores de vari�veis individuais em indicadores compostos (por exemplo, o indicador de coleta de lixo � composto por vari�veis com pondera��es diferentes de coleta lixo para o meio urbano e o meio rural), possibilitando a averigua��o da incid�ncia de pobreza agregada.

Com base no m�todo AF, cria-se uma outra camada de vari�veis, desta vez com pesos igualmente distribu�dos entre as dimens�es e os indicadores compostos. Soma-se, ent�o, os indicadores finais ponderados pelos pesos, e cria-se duas vari�veis de identifica��o dos em pobreza a partir de dois pontos de corte onde valores maiores que 0,50 e 0,33 s�o iguais a zero (n�o-pobres ou n�o-privados), e valores menores s�o equalizados a um (pobres ou em priva��o). Para o c�lculo da contribui��o de cada indicador para o IPM, realiza-se a censura dos n�o-pobres na base de dados substituindo os pesos por zero em cada indicador, e calcula-se novamente a incid�ncia de pobreza de cada indicador com o peso para os identificados em situa��o de priva��o. Depois, divide-se cada valor da "censored head count" pela soma de todos. 

## Vari�veis selecionadas

O primeiro passo da identifica��o consiste em definir quais dimens�es s�o mais relevantes e quais devem ser as vari�veis utilizadas para representar cada uma.
Neste estudo - levando em conta os dados utilizados na pesquisa de Serra (2017) e a disponibilidade de informa��es na PNADc -, selecionou-se as seguintes dimens�es e vari�veis:

<p align="left">
<a href="http://lattes.cnpq.br/6536067478055019">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro1.png" width="240" alt="Ci�ncias Sociais - UFES">
</a>
</p>

## Propor��o de pessoas que sofrem priva��o, segundo indicadores selecionados - 2019

O painel de indicadores, na dimens�o do padr�o de vida, aponta que, em 2019, 2,6% da popula��o brasileira residia em domic�lios sem �gua canalizada, ao passo que no Esp�rito Santo a propor��o fora de 0,07%. Ao mesmo tempo, aproximadamente 2,6% dos brasileiros habitavam domic�lios sem banheiro, taxa que alcan�a 0,2% dos capixabas. Esses indicadores representam condi��es prec�rias de higiene e sa�de, al�m do esfor�o para coletar e transportar �gua para as resid�ncias.
Sendo assim, de acordo com a proje��o populacional do IBGE, em 2019, mais de cinco milh�es de brasileiros vivenciavam priva��o nesses componentes, ao passo que menos de 9 mil capixabas encontravam-se nessa situa��o, indicando uma universaliza��o maior destes indicadores na realidade capixaba.

<p align="left">
<a href="http://lattes.cnpq.br/6536067478055019">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro2.png" width="240" alt="Ci�ncias Sociais - UFES">
</a>
</p>

O destino do lixo ainda se configura como uma grave querela brasileira, com aproximadamente 15% do pa�s (mais de 31 milh�es de pessoas) e 11% (mais de 400 mil pessoas) do Esp�rito Santo privados de coleta direta ou indireta do lixo. O d�ficit habitacional tamb�m se estrutura como um grave problema nacional, com mais de 18% da popula��o brasileira (mais de 37 milh�es de pessoas), e aproximadamente 15% da popula��o capixaba (por volta de 600 mil pessoas), privada de condi��es adequadas de moradia. As priva��es em bens de consumo dur�veis mant�m patamar similar nos dois n�veis geogr�ficos analisados, com cerca de 3,5% do Brasil (7.332.376 pessoas) e 3,7% do Esp�rito Santo (148.552 pessoas) privados desses bens.
O destaque positivo da dimens�o do padr�o de vida, para os dois n�veis geogr�ficos, fica no acesso � energia el�trica, com cerca de 0,2% da popula��o brasileira e 0,02% da popula��o capixaba privadas nesse componente, sinalizando o sucesso das pol�ticas p�blicas de universaliza��o do acesso � energia.

A frequ�ncia escolar da popula��o entre 7 e 17 anos, � o �nico indicador que caminha para a universaliza��o, nesta dimens�o, com cerca de 0,6% (aproximadamente um milh�o e duzentas mil pessoas) da popula��o brasileira e 0,65% (26 mil pessoas) da popula��o capixaba vivenciando priva��o nesse componente. 
Na an�lise de um indicador elementar, como o da alfabetiza��o, constata-se n�veis muito elevados, e persistentes, de analfabetismo no pa�s, com 5,5% das pessoas com 9 anos ou mais (11.522.305 pessoas), no Brasil, e 4,8%, da mesma faixa et�ria (192.716 pessoas), do Esp�rito Santo, privados, em 2019, de saber ler ou escrever. A falta de prioridade, intencional ou n�o, que a dimens�o educacional teve e tem na pol�tica brasileira tamb�m se traduz nos elevados n�veis de priva��o vivenciados pela popula��o maior de 18 anos, quando analisado o n�vel de instru��o desse grupo et�rio: entrando na segunda d�cada do s�culo XXI, cerca de 26% da popula��o brasileira (mais de 54 milh�es de pessoas) e mais de 27% da capixaba (mais de um milh�o de indiv�duos) possu�am nenhuma instru��o ou n�o completara o ensino fundamental.

## Medidas de pobreza multidimensional, por m�todo de c�lculo - 2019

Depois da an�lise do painel de indicadores, aplica-se o m�todo de agrega��o e c�lculo de Alkire-Foster (AF) aos dados para a compara��o dos resultados obtidos nas m�tricas selecionadas.

<p align="left">
<a href="http://lattes.cnpq.br/6536067478055019">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro3.png" width="240" alt="Ci�ncias Sociais - UFES">
</a>
</p>

A incid�ncia de pobreza, identificada pelo modelo, resultou em 7,4% (15.502.738 pessoas) da popula��o brasileira e 5,6% (224.835 pessoas) da popula��o capixaba multidimensionalmente pobre em 2019, quando considerada a linha de corte do IPM Global (OPHI, 2020) de 33%, mantendo o patamar de um digito nos dois n�veis geogr�ficos analisados. J� pela linha de priva��es em 50% dos componentes, a incid�ncia da pobreza multidimensional cai para 2,75% da popula��o brasileira (5.761.152 pessoas) e 1,6% da capixaba (64.238 pessoas), uma subestima��o que indica o corte em 33% como o mais adequado para a an�lise da incid�ncia. 
Um� an�lise da distribui��o das pessoas em todas as linhas de corte, cimenta uma escolha mais segura de uma linha particular para o Brasil e o Esp�rito Santo, com a menor subestima��o poss�vel.

<p align="left">
<a href="http://lattes.cnpq.br/6536067478055019">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro4.png" width="240" alt="Ci�ncias Sociais - UFES">
</a>
</p>

A m�dia do grau de intensidade da pobreza multidimensional vivenciada por aqueles privados em 33% dos componentes atinge patamares semelhantes nos dois estratos geogr�ficos, ficando em 53% no Brasil e 51% no Esp�rito Santo. Pelo prisma do corte em 50% de priva��es, a intensidade da pobreza se agrava, atingindo 62% no Brasil e 57% no Esp�rito Santo, demonstrando que a an�lise de intensidade se beneficia de recortes espec�ficos para, por exemplo, averiguar a intensidade da pobreza entre os mais pobres dos identificados como em priva��es.

<p align="left">
<a href="http://lattes.cnpq.br/6536067478055019">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro5.png" width="240" alt="Ci�ncias Sociais - UFES">
</a>
</p>

Por fim, combinando a incid�ncia (????) e a intensidade (????), o �ndice de pobreza multidimensional (????0 = ???? � ????) mostra que, na linha de corte de pobreza em 33% dos componentes, a pobreza multidimensional atinge 3,9% da popula��o brasileira (mais de 8 milh�es de pessoas) e 2,84% da capixaba (mais de 100 mil pessoas), ao passo em que a linha de 50% subestima a infer�ncia para uma pontua��o de 0,01715505 no IPM Brasil (mais de 3 milh�es de pessoas) e 0,009247565 no IPM Esp�rito Santo (mais de 36 mil pessoas).

## Contribui��o relativa dos indicadores - 2019

<p align="left">
<a href="http://lattes.cnpq.br/6536067478055019">
<img src="https://github.com/iagocnunes/IPM_ES/blob/main/IPM%20images/tcc-quadro6.png" width="240" alt="Ci�ncias Sociais - UFES">
</a>
</p>

Em rela��o � contribui��o relativa de cada indicador para o �ndice, as tabelas mostram pouca varia��o entre os pontos de corte focados neste estudo, tanto para o Brasil quanto para o Esp�rito Santo. Na compara��o entre os n�veis geogr�ficos, h� uma preponder�ncia maior das priva��es no n�vel de instru��o entre os componentes do IPM capixaba (63% do �ndice) em rela��o ao IPM Brasil (52%), e uma diferen�a de 4 pontos percentuais entre a participa��o do destino do lixo no �ndice brasileiro e capixaba.

## Considera��es finais

O enfrentamento da pobreza exige uma amplia��o do espectro anal�tico para que se compreenda todas suas facetas, possibilitando que, para al�m do aumento da renda, o enfrentamento se desdobre em implementa��o de pol�ticas p�blicas voltadas para o saneamento, a educa��o, acesso � informa��o, meio ambiente, habita��o, e demais dimens�es deste fen�meno multifacetado.
